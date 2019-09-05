package com.service.impl;

import com.entity.Collect;
import com.entity.Order;
import com.mapper.LogicMapper;
import com.service.LogicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author SL
 * @date 2019/8/27 星期二 10:26
 * guazi/com.service.impl/LogicServiceImpl
 */
@Service
public class LogicServiceImpl implements LogicService {
    @Autowired
    private LogicMapper logicMapper;
    @Override
    public int addOrder(Order order) {
        int flag=0;
        if (logicMapper.checkOrder(order)==null){
            logicMapper.addOrder(order);
        }else {
            flag=1;
        }
        return flag;
    }
    @Override
    public int addCollect(Collect collect) {
        int flag=0;
        if (logicMapper.checkCollect(collect)==null){
            logicMapper.addCollect(collect);
        }else {
            flag=1;
        }
        return flag;
    }
}
