package com.service;

import com.entity.Collect;
import com.entity.Order;

/**
 * @author SL
 * @date 2019/8/27 星期二 10:26
 * guazi/com.service/LogicService
 */
public interface LogicService {
//    void addOrder(Order order);
    int addOrder(Order order);
    int addCollect(Collect collect);
}
