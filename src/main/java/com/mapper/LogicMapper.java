package com.mapper;

import com.entity.Collect;
import com.entity.Order;

/**
 * @author SL
 * @date 2019/8/27 星期二 10:22
 * guazi/com.mapper/LogicMapper
 */
public interface LogicMapper {
    void addOrder(Order order);
    Order checkOrder(Order order);
    void addCollect(Collect collect);
    Collect checkCollect(Collect collect);
}
