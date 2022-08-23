package com.prince.user.service;

import com.aliyun.cloudauth20190307.models.DescribeFaceVerifyRequest;
import com.aliyun.cloudauth20190307.models.DescribeFaceVerifyResponse;
import com.aliyun.cloudauth20190307.models.InitFaceVerifyRequest;
import com.aliyun.cloudauth20190307.models.InitFaceVerifyResponse;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.prince.common.constant.*;
import com.prince.common.enums.UserStatus;
import com.prince.common.exception.BusinessException;
import com.prince.common.exception.UserServiceException;
import com.prince.common.resp.ResponseCode;
import com.prince.common.util.*;
import com.prince.encrypt.MD5Coder;
import com.prince.encrypt.processor.ASEEncryptionProcessor;
import com.prince.operation.entity.dto.TagDTO;
import com.prince.operation.entity.vo.Sign;
import com.prince.operation.service.TagService;
import com.prince.server.context.UserContext;
import com.prince.user.entity.dto.UserDTO;
import com.prince.user.entity.dto.UserSignIn;
import com.prince.user.entity.po.User;
import com.prince.user.entity.po.UserInfo;
import com.prince.user.entity.vo.FaceVerify;
import com.prince.user.entity.vo.UserLogin;
import com.prince.user.entity.vo.UserPassword;
import com.prince.user.entity.vo.UserRegistry;
import com.prince.user.mapper.UserInfoMapper;
import com.prince.user.mapper.UserMapper;
import com.prince.user.verification.anliyun.AliyunFaceVerify;
import com.prince.user.verification.anliyun.constant.Model;
import com.prince.user.verification.anliyun.constant.ProductCode;
import com.prince.user.verification.anliyun.exception.FaceVerifyResponseCode;
import com.prince.user.verification.jpush.JVerification;
import com.prince.user.verification.netease.NeteaseFaceVerify;
import lombok.RequiredArgsConstructor;
import org.apache.commons.lang3.StringUtils;
import org.apache.dubbo.config.annotation.DubboReference;
import org.apache.dubbo.config.annotation.DubboService;
import org.apache.shardingsphere.transaction.annotation.ShardingTransactionType;
import org.apache.shardingsphere.transaction.core.TransactionType;
import org.redisson.api.RedissonClient;
import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;
import java.util.concurrent.TimeUnit;

/**
 * Description :
 *
 * @author StrangePrince <br\>
 * @since 2022/6/19 14:37
 */
@Service
@DubboService
@RequiredArgsConstructor
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

    private final EntityTransformationUtil<User, UserDTO> transformer = new EntityTransformationUtil<>(User.class, UserDTO.class);
    private final RedisTemplate<String, Object> redisTemplate;

    private final MongoTemplate mongoTemplate;

    private final RedissonClient redisson;

    private final AmqpTemplate amqpTemplate;

    private final UserMapper userMapper;

    private final UserInfoMapper userInfoMapper;

    private final SmsUtil smsUtil;

    private final AliyunFaceVerify aliyunFaceVerify;

    private final NeteaseFaceVerify neteaseFaceVerify;

    private final JVerification jVerification;

    @DubboReference
    private TagService tagService;

    @Override
    public UserDTO loginByPhone(UserLogin userLogin) {
        if (StringUtils.isBlank(userLogin.getAccount())) {
            throw new UserServiceException("账号不能为空！");
        }
        if (StringUtils.isBlank(userLogin.getPassword())) {
            throw new UserServiceException("密码不能为空！");
        }
        String account = userLogin.getAccount();
        //判断是否是手机号格式
        if (account.matches(PrinceConstants.PHONE_REGEX)) {
            throw new UserServiceException("手机号不正确");
        }
        String phone = userLogin.getAccount();
        //对手机号进行编码
        phone = ASEEncryptionProcessor.encode(phone);
        User user = userMapper.selectOne(new LambdaQueryWrapper<User>().eq(User::getPhoneCryptographic, phone).ne(User::getStatus, -2));
        if (user == null) {
            throw new BusinessException(ResponseCode.ACCOUNT_NOT_EXIST);
        }
        if (!(userLogin.getPassword().equals(user.getPassword()))) {
            throw new UserServiceException("密码不正确！");
        }

        //TODO 其他登录验证

        return loginSuccess(user);
    }

    @Override
    public UserDTO loginByprinceNumber(UserLogin userLogin) {
        if (StringUtils.isBlank(userLogin.getAccount())) {
            throw new UserServiceException("账号不能为空！");
        }
        if (StringUtils.isBlank(userLogin.getPassword())) {
            throw new UserServiceException("密码不能为空！");
        }
        String account = userLogin.getAccount();
        if (!(account.matches(PrinceConstants.PRINCE_NUMBER_REGEX))) {
            throw new UserServiceException("账号不存在！");
        }
        //prince号登录
        Long princeNumber = Long.valueOf(account);
        User user = userMapper.selectOne(new LambdaQueryWrapper<User>().eq(User::getPrinceNumber, princeNumber).ne(User::getStatus, -2));
        if (user == null) {
            throw new UserServiceException("账号不存在！");
        }
        String psw = MD5Coder.encodeMD5(userLogin.getPassword());
        if (!(user.getPassword().equals(psw))) {
            throw new UserServiceException("密码不正确！");
        }

        return loginSuccess(user);
    }

    @Override
    public UserDTO loginByVerification(UserLogin userLogin) {
        if (StringUtils.isBlank(userLogin.getAccount())) {
            throw new UserServiceException("账号不能为空！");
        }
        if (userLogin.getVerification() == null) {
            throw new UserServiceException("验证码不能为空！");
        }
        String phone = ASEEncryptionProcessor.encode(userLogin.getAccount());
//        String verification = (String) redisTemplate.boundValueOps(RedisCacheKey.PHONE_VERIFICATION + phone).get();
//        if (verification == null || !(verification.equals(userLogin.getVerification()))) {
//            throw new UserServiceException("验证码错误！");
//        }
        //对手机号进行编码
        User user = userMapper.selectOne(new LambdaQueryWrapper<User>().eq(User::getPhoneCryptographic, phone).ne(User::getStatus, -2));
        if (user == null) {
            //TODO 注册账号

            user = saveUser(userLogin.getAccount());
//            String code = registry.getInvitationCode();
//            if (StringUtils.isNotBlank(code)) {
//                redisTemplate.boundValueOps(RedisCacheKey.CACHE_INVITATION + user.getId()).set(code);
//            }
        }

        return loginSuccess(user);
    }

    @Override
    public UserDTO loginBySuyan(UserLogin userLogin) {
        if (StringUtils.isBlank(userLogin.getLoginToken())) {
            throw new UserServiceException("一键登录失败");
        }
        String phone = jVerification.verify(userLogin.getLoginToken(), userLogin.getExID());
        User user = userMapper.selectOne(new LambdaQueryWrapper<User>().eq(User::getPhoneCryptographic, ASEEncryptionProcessor.encode(userLogin.getAccount())).ne(User::getStatus, -2));
        if (user == null) {
            user = saveUser(phone);
        }
        return loginSuccess(user);
    }

    /**
     * Description :  账号验证通过后续操作
     *
     * @param user 用户信息
     * @return {@link UserDTO}
     * @throws
     * @author Mu Prince
     * @since 2022/8/9 9:58
     */
    private UserDTO loginSuccess(User user) {

        //账号状态 -2:注销；-1：注册未完成；1：正常；2：锁定；3：冻结；4：禁言
        switch (user.getStatus()) {
            case -1:
                return transformer.transformToSecond(user);
            case 2:
                throw new UserServiceException("账号已被锁定。");
            case 3:
                if (user.getUnfreezeTime().before(new Date())) {
                    throw new UserServiceException("账号冻结中。");
                }
        }
        //登录成功 账号验证
        if (!user.getIsVerified()) {
            throw new BusinessException(ResponseCode.UNVERIFIED);
        }

        //验证通过
        user.setLastLoginTime(new Date());
        String token = JWTUtil.createAppToken(user.getId());
        //修改登录时间
        userMapper.updateById(user);

        Object code = redisTemplate.boundValueOps(RedisCacheKey.CACHE_INVITATION + user.getId()).get();
        if (code != null) {
            //TODO 关注创作者 邀请者
        }

        UserDTO userDTO = transformer.transformToSecond(user);
        //记录在线用户
        redisTemplate.boundValueOps(RedisCacheKey.USER_ONLINE).set(userDTO, PrinceConstants.USER_CACHE_EXPIRE_AT_S, TimeUnit.SECONDS);
        //保存token
        redisTemplate.boundHashOps(RedisKey.PRINCE_TOKEN_APP).put(user.getId(), token);

        userDTO.setToken(token);

        return userDTO;
    }

    @Override
    public void registry(UserRegistry userRegistry) {


    }

    @Override
    @Transactional
    @ShardingTransactionType(TransactionType.LOCAL)
    public UserDTO registryByPhone(UserRegistry registry) {
        String phone = registry.getPhone();
        if (!phone.matches(PrinceConstants.PHONE_REGEX)) {
            throw new UserServiceException("手机号不正确！");
        }
        String pc = ASEEncryptionProcessor.encode(phone);
        User user = userMapper.selectOne(new QueryWrapper<User>().eq("phone_cryptographic", pc));
        if (user != null) {
            throw new UserServiceException("该手机号已注册。");
        }
//        String verification = (String) redisTemplate.boundValueOps(RedisKey.PHONE_VERIFICATION + phone).get();
//        if (verification == null || !(verification.equals(registry.getVerification()))) {
//            throw new UserServiceException("验证码错误！");
//        }
//        //获取一个prince号
//        Object pop = redisTemplate.boundSetOps(RedisKey.prince_NUMBER_POOL).pop();
//        if (pop == null) throw new UserServiceException("未知错误，请重试");
//
//        //保存账号信息
//        user = new User();
//        user.setPhoneCryptographic(pc);
//        user.setNickname(PrinceConstants.DEFAULT_NICKNAME_PREFIX + pop);
//        user.setPrinceNumber(Long.valueOf(pop.toString()));
//        user.setRegistryTime(new Date());
//        user.setStatus(UserStatus.REGISTERING.code);
//        user.setHeadPic(PrinceConstants.DEFAULT_HEAD_PICTURE);
//        String imAccount = UUID.randomUUID().toString().replaceAll("-", "");
//        user.setImAccount(imAccount);
//        userMapper.insert(user);
//
//        //异步注册用户im账号
////        amqpTemplate.convertAndSend(user);
//
//        //保存用户信息
//        UserInfo info = new UserInfo();
//        info.setUserId(user.getId());
//        info.setPhone(NumberUtil.numToStar(phone, 2, 7));
//        info.setPhoneCryptographic(pc);
//        info.setNickname(user.getNickname());
//        info.setHeadPic(user.getHeadPic());
//        info.setPrinceNumber(user.getPrinceNumber());
//        userInfoMapper.insert(info);
        user = saveUser(phone);
        String code = registry.getInvitationCode();
        if (StringUtils.isNotBlank(code)) {
            redisTemplate.boundValueOps(RedisCacheKey.CACHE_INVITATION + user.getId()).set(code);
        }
        return transformer.transformToSecond(user);
    }

    public User saveUser(String phone) {
        //获取一个prince号
        Object pop = redisTemplate.boundSetOps(RedisKey.PRINCE_NUMBER_POOL).pop();
        if (pop == null) throw new UserServiceException("未知错误，请重试");

        //保存账号信息
        User user = new User();
        user.setNickname(PrinceConstants.DEFAULT_NICKNAME_PREFIX + pop);
        user.setPrinceNumber(Long.valueOf(pop.toString()));
        user.setRegistryTime(new Date());
        user.setPhoneCryptographic(ASEEncryptionProcessor.encode(phone));
        user.setStatus(UserStatus.REGISTERING.code);
        user.setHeadPic(PrinceConstants.DEFAULT_HEAD_PICTURE);
        String imAccount = UUID.randomUUID().toString().replaceAll("-", "");
        user.setImAccount(imAccount);
        userMapper.insert(user);

        //异步注册用户im账号
//        amqpTemplate.convertAndSend(user);

        //保存用户信息
        UserInfo info = new UserInfo();
        info.setUserId(user.getId());
        info.setPhone(NumberUtil.numToStar(phone, 2, 7));
        info.setPhoneCryptographic(ASEEncryptionProcessor.encode(phone));
        info.setNickname(user.getNickname());
        info.setHeadPic(user.getHeadPic());
        info.setPrinceNumber(user.getPrinceNumber());
        userInfoMapper.insert(info);

        return user;
    }

    @Override
    @Transactional
    public void changePassword(UserPassword userPassword) {
        String phone = ASEEncryptionProcessor.encode(userPassword.getPhone());
        String verification = (String) redisTemplate.boundValueOps(RedisCacheKey.PHONE_VERIFICATION + phone).get();
        if (verification == null || !(verification.equals(userPassword.getVerification()))) {
            throw new UserServiceException("验证码不正确！");
        }
        String password = userPassword.getPassword();
        setPassword(userPassword.getUserId(), password);
    }

    @Override
    @Transactional
    public void setPassword(Long userId, String password) {
        if (userId == null || userId == 0L) {
            userId = UserContext.get();
        }
        userMapper.updatePassword(userId, MD5Coder.encodeMD5(password));
    }

    @Override
    public void sendVerification(String phone, String scene) {
        if (phone.matches(PrinceConstants.PHONE_REGEX)) {
            String p = ASEEncryptionProcessor.encode(phone);
            if (StringUtils.isNotBlank(scene) && PrinceConstants.SCENE_REGISTRY.equals(scene)) {
                User user = userMapper.selectOne(new QueryWrapper<User>().eq("phone_cryptographic", p));
                if (user != null) {
                    throw new UserServiceException("该手机号已注册。");
                }
            }
//            String verification = RandomUtil.randomNumber(6);
//            smsUtil.sendCode(phone, verification);
//            redisTemplate.boundValueOps(RedisCacheKey.PHONE_VERIFICATION + p).set(verification, 60L, TimeUnit.SECONDS);
        } else {
            throw new UserServiceException("手机号码不正确！");
        }
    }

    @Override
    public void logout() {
        Long id = UserContext.get();
        redisTemplate.boundHashOps(RedisKey.PRINCE_TOKEN_APP).delete(id);
        redisTemplate.delete(RedisCacheKey.USER_ONLINE + id);
    }

    @Override
    public String initFaceVerify(FaceVerify faceVerify) {
        String certNo = faceVerify.getCertNo();

        //校验身份证
        verifyCertNo(certNo);

        InitFaceVerifyRequest request = new InitFaceVerifyRequest();
        request.setSceneId(aliyunFaceVerify.getAliyunConfig().getFace().getSceneId());
        //设置商户请求唯一标识，支持长度为32位的字母和数字的组合，请确保唯一。
        String s = UUID.randomUUID().toString().replaceAll("-", "");
        request.setOuterOrderNo(s);
        //认证方案
        request.setProductCode(ProductCode.ID_PRO);
        //活体检测类型
        request.setModel(Model.LIVENESS);
        //真实姓名
        request.setCertName(faceVerify.getName());
        //证件号码
        request.setCertNo(faceVerify.getCertNo());
        //MetaInfo环境参数，需要通过客户端SDK获取。
        request.setMetaInfo(faceVerify.getMetaInfo());

        InitFaceVerifyResponse response = aliyunFaceVerify.initFaceVerifyAutoRoute(request);
        //处理结果
        Integer code = Integer.valueOf(response.getBody().getCode());
        //如果响应不是200
        if (!(FaceVerifyResponseCode.SUCCESS.getCode().equals(code))) {
            //418，刷脸失败次数过多
            if (FaceVerifyResponseCode.TOO_MANY.getCode().equals(code)) {
                throw new UserServiceException(FaceVerifyResponseCode.TOO_MANY.getMsg());
            }
            //412，实人认证欠费，给运维发短信，半个小时最多一条
            if (FaceVerifyResponseCode.ARREARS.getCode().equals(code)) {
                if (Boolean.TRUE.equals(redisTemplate.boundValueOps(RedisKey.PRINCE_EXCEPTION_SMS_ALIYUN_FACE_VERIFY_ARREARS).setIfAbsent(1, 30L, TimeUnit.MINUTES))) {
                    smsUtil.sendMessage(smsUtil.OPERATION_PHONE, PrinceSmsTemplate.ALIYUN_FACE_VERIFY_EXCEPTION_ARREARS);
                }
            }
            throw new UserServiceException("实人认证暂不可用，请稍后重试。");
        }
        //响应成功，缓存用户证件信息
        redisTemplate.boundHashOps(RedisCacheKey.USER_ID_CARD_INFO).put(faceVerify.getUserId(), faceVerify);
        return response.getBody().getResultObject().certifyId;
    }

    @Override
    @Transactional
    public Boolean describeFaceVerify(String certifyId, Long userId) {
        //构建请求
        DescribeFaceVerifyRequest request = new DescribeFaceVerifyRequest();
        request.setSceneId(aliyunFaceVerify.getAliyunConfig().getFace().getSceneId());
        request.setCertifyId(certifyId);
        //获取认证结果
        DescribeFaceVerifyResponse response = aliyunFaceVerify.describeFaceVerify(request);
        String passed = response.getBody().getResultObject().getPassed();


        FaceVerify verify = (FaceVerify) redisTemplate.boundHashOps(RedisCacheKey.USER_ID_CARD_INFO).get(userId);
        if (AliyunFaceVerify.PASSED.equals(passed)) {
            UserInfo userInfo = userInfoMapper.selectOne(new QueryWrapper<UserInfo>().eq("user_id", userId));
            boolean tag = false;
            if (userInfo == null) {
                tag = true;
                userInfo = new UserInfo();
                userInfo.setUserId(userId);
            }
            if (verify != null) {
                userInfo.setBirthday(IdCardNoVerificationUtil.getBirthday(verify.getCertNo()));
                userInfo.setIdCard(NumberUtil.numToStar(verify.getCertNo(), 2, 14));
                userInfo.setIdCardCryptographic(ASEEncryptionProcessor.encode(verify.getCertNo()));
                userInfo.setConstellation(IdCardNoVerificationUtil.getConstellation(verify.getCertNo()));
                userInfo.setRealName(verify.getName());
                userInfo.setAge(IdCardNoVerificationUtil.getAge(verify.getCertNo()));

            } else {
                String materialInfo = response.getBody().getResultObject().getMaterialInfo();
                System.out.println(materialInfo);
            }
            //修改用户认证状态
            userMapper.verified(userId);
            if (tag) {
                //保存用户信息
                userInfoMapper.insert(userInfo);
            } else {
                userInfoMapper.updateById(userInfo);
            }
        } else {
            User user = userMapper.selectById(userId);
            Map<String, Object> information = new HashMap<>();
            information.put("phone", user.getPhoneCryptographic());
            if (verify != null) {
                information.put("idNo", verify.getCertNo());
                information.put("age", IdCardNoVerificationUtil.getAge(verify.getCertNo()));
            }
            information.put("code", response.getBody().getCode());
            information.put("message", response.getBody().getMessage());
            mongoTemplate.insert(information, MongoCollectionNames.REGISTRY_FAILED);
        }
        return AliyunFaceVerify.PASSED.equals(passed);
    }

    @Override
    @Transactional
    public UserDTO verifyFaceByNetease(FaceVerify verify) {
        String certNo = verify.getCertNo();
        verifyCertNo(certNo);

        neteaseFaceVerify.verify(verify.getCertNo(), verify.getName(), verify.getMetaInfo());

        Long userId = verify.getUserId();
        UserInfo userInfo = userInfoMapper.selectOne(new QueryWrapper<UserInfo>().eq("user_id", userId));
        boolean tag = false;
        if (userInfo == null) {
            tag = true;
            userInfo = new UserInfo();
            userInfo.setUserId(userId);
        }
        userInfo.setBirthday(IdCardNoVerificationUtil.getBirthday(verify.getCertNo()));
        userInfo.setIdCard(NumberUtil.numToStar(verify.getCertNo(), 2, 14));
        userInfo.setIdCardCryptographic(ASEEncryptionProcessor.encode(verify.getCertNo()));
        userInfo.setConstellation(IdCardNoVerificationUtil.getConstellation(verify.getCertNo()));
        userInfo.setRealName(verify.getName());
        userInfo.setAge(IdCardNoVerificationUtil.getAge(verify.getCertNo()));

        //修改用户认证状态
        userMapper.verified(userId);
        if (tag) {
            //保存用户信息
            userInfoMapper.insert(userInfo);
        } else {
            userInfoMapper.updateById(userInfo);
        }
        User user = userMapper.selectById(userId);
        return loginSuccess(user);
    }

    @Override
    public String refreshToken() {
        Long id = UserContext.get();
        return JWTUtil.createAppToken(id);
    }

    private void verifyCertNo(String certNo) {
        if (!IdCardNoVerificationUtil.verifyIdNo(certNo)) {
            throw new UserServiceException("证件号码不正确，请检查。");
        }
        if (IdCardNoVerificationUtil.getGender(certNo) == 1) {
            throw new UserServiceException("很抱歉，prince作为一站式女性社区，暂不支持非女性用户使用。");
        }
        if (IdCardNoVerificationUtil.getAge(certNo) < 16) {
            throw new UserServiceException("您的年龄暂未达到注册要求。");
        }
    }

    @Override
    public Integer isSignIn(String phone) {
        String pc = ASEEncryptionProcessor.encode(phone);
        User user = userMapper.selectOne(new QueryWrapper<User>().eq("phone_cryptographic", pc));
        if (user == null) {
            return PrinceConstants.USER_NOT_EXIST;
        }
        UserContext.set(user.getId());
        List<TagDTO> tagsByUser = tagService.getTagsByUser(user.getId());
        UserContext.clear();
        if (tagsByUser == null || tagsByUser.isEmpty()) {
            return PrinceConstants.USER_NO_TAGS;
        }
        if (user.getIsVerified()) {
            return PrinceConstants.USER_UNVERIFIED;
        }
        return 0;
    }

    @Override
    public void mark(Sign sign) {
        //传递用户信息
        UserContext.set(sign.getUserId());
        tagService.mark(sign);
        UserContext.clear();
        //修改用户状态
        userMapper.updateStatus(sign.getUserId(), UserStatus.NORMAL.code);
    }
}
