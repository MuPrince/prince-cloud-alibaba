package com.prince.goods.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.prince.goods.entity.Sku;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

/**
 * Description : 商品 最小的库存单位(StockKeeping Unit)
 *
 * @author StrangePrince <br\>
 * @since 2022/6/7 23:15
 */
public interface SkuMapper extends BaseMapper<Sku> {
    /**
     * 库存递减
     */
    @Update("update sku set inventory=inventory-#{num} where id=#{id} and inventory>=#{num}")
    int deCount(@Param("id")String id, @Param("inventory")Integer num);
}
