package com.prince.goods.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.prince.goods.entity.Cart;
import com.prince.goods.entity.Sku;
import com.prince.goods.mapper.SkuMapper;
import com.prince.server.context.UserContext;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.dubbo.config.annotation.DubboService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Description : 商品 最小的库存单位(StockKeeping Unit)
 *
 * @author StrangePrince <br\>
 * @since 2022/6/7 23:34
 */
@Service
@DubboService
@RequiredArgsConstructor
@Slf4j
public class SkuServiceImpl extends ServiceImpl<SkuMapper, Sku> implements SkuService {

    private final SkuMapper skuMapper;

    /**
     * Description : 库存递减
     * @param carts
     * @return void
     * @throws
     * @since 2022/6/7 23:48
     * @author StrangePrince
     */
    @Transactional(rollbackFor = Exception.class)
    @Override
    public void deCount(List<Cart> carts) {
        for (Cart cart : carts) {
            //库存递减
            int deCount = skuMapper.deCount(cart.getSkuId(), cart.getNum());
            if(deCount<=0){
                throw new RuntimeException("库存不足！");
            }
        }
    }

    @Override
    public String test() {
        Long id = UserContext.get();
        return "这里是商品服务，你的RPC调用成功了,你的id是：" + id;
    }

}
