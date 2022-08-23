package com.prince.moment.service;

import com.prince.moment.entity.dto.MomentDTO;
import com.prince.moment.entity.dto.PortfolioDTO;
import com.prince.server.context.UserContext;
import com.prince.user.entity.dto.UserInfoDTO;
import com.prince.user.service.UserInfoService;
import lombok.RequiredArgsConstructor;
import org.apache.dubbo.config.annotation.DubboReference;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.*;

/**
 * Description :
 *
 * @author Mu Prince <br\>
 * @since 2022/8/13 11:37
 */
@Service
@RequiredArgsConstructor
public class SearchServiceImpl implements SearchService {

    private final ExecutorService pool = Executors.newFixedThreadPool(6);

    private final String momentKey = "moments";

    private final String userKey = "users";

    private final String portfolioKey = "portfolios";

    private final MomentService momentService;

    private final PortfolioService portfolioService;

    @DubboReference(check = false)
    private UserInfoService userInfoService;
    @Override
    public Map<String, Object> searchAll(String keyword) {

        Long userId = UserContext.get();
        //查询动态
        Future<List<MomentDTO>> momentsFuture = pool.submit(() -> {
            UserContext.set(userId);
            List<MomentDTO> moments = momentService.search(keyword, 3);
            UserContext.clear();
            return moments;
        });
        //查询用户
        Future<List<UserInfoDTO>> usersFuture = pool.submit(() -> {
            UserContext.set(userId);
            List<UserInfoDTO> users = userInfoService.search(keyword, 3);
            UserContext.clear();
            return users;
        });
        //查询作品集
        Future<List<PortfolioDTO>> portfoliosFuture = pool.submit(() -> {
            UserContext.set(userId);
            List<PortfolioDTO> portfolios = portfolioService.search(keyword, 3);
            UserContext.clear();
            return portfolios;
        });
        Map<String, Object> result = new HashMap<>();
        try {
            result.put(userKey, usersFuture.get());
            result.put(momentKey, momentsFuture.get());
            result.put(portfolioKey, portfoliosFuture.get());
        } catch (InterruptedException | ExecutionException e) {
            e.printStackTrace();
        }
        return result;
    }
}
