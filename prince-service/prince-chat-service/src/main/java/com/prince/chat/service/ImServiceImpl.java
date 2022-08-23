package com.prince.chat.service;

import com.prince.chat.mapper.ImMapper;
import com.prince.chat.tencent.util.TencentCloudImUtil;
import com.prince.user.entity.po.User;
import lombok.RequiredArgsConstructor;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

/**
 * Description :
 *
 * @author Mu Prince <br\>
 * @since 2022/7/13 20:40
 */
@Service
@RequiredArgsConstructor
public class ImServiceImpl implements ImService {

    private final TencentCloudImUtil tencentCloudImUtil;

    @Override
    public void registry(User user) {
        String imAccount = user.getImAccount();
        if (StringUtils.isNotBlank(imAccount)) {
            tencentCloudImUtil.accountImport(user.getImAccount(), user.getNickname(), user.getHeadPic());
        }
    }

    @Override
    public void registry(String imAccount) {
        tencentCloudImUtil.accountImport(imAccount);
    }

    @Override
    public void registry(String imAccount, String nickname, String headPic) {
        tencentCloudImUtil.accountImport(imAccount, nickname, headPic);
    }
}
