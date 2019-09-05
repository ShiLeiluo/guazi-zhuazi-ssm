package com.service.impl;

import com.entity.*;
import com.mapper.PersonalCenterMapper;
import com.service.PersonalCenterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author SL
 * @date 2019/8/28 星期三 16:11
 * guazi/com.service.impl/PersonalCenterServiceImpl
 */
@Service
public class PersonalCenterServiceImpl implements PersonalCenterService {
    @Autowired
    private PersonalCenterMapper personalCenterMapper;
    @Override
    public int updateUser(User user) {
        try {
            personalCenterMapper.updateUser(user);
        }catch (Exception e){
            e.printStackTrace();
            return 1;
        }
        return 0;
    }

    @Override
    public List<UndoneOrder> undoneorder(int userid) {
        return personalCenterMapper.undoneorder(userid);
    }

    @Override
    public List<UndoneOrder> historyOrder(int userid) {
        return personalCenterMapper.historyOrder(userid);
    }

    @Override
    public List<UndoneOrder> confirmsell(String phone) {
        return personalCenterMapper.confirmsell(phone);
    }

    @Override
    public List<Collections> collection(int userid) {
        return personalCenterMapper.collection(userid);
    }

    @Override
    public int deleteundoneoreder(int oid) {
        try {
            personalCenterMapper.deleteundoneoreder(oid);
        }catch (Exception e){
            e.printStackTrace();
            return 1;
        }

        return 0;
    }

    @Override
    public int deletecollection(int cid) {
        try{
            personalCenterMapper.deletecollection(cid);
        }catch (Exception e){
            e.printStackTrace();
            return 1;
        }
        return 0;
    }

    @Override
    public int deleteunchecksell(int id) {
        try{
            personalCenterMapper.deleteunchecksell(id);
        }catch (Exception e){
            e.printStackTrace();
            return 1;
        }
        return 0;
    }
    @Override
    public int deletecheckedsell(int id) {
        try{
            personalCenterMapper.deletecheckedsell(id);
        }catch (Exception e){
            e.printStackTrace();
            return 1;
        }
        return 0;
    }

    @Override
    public int updateConfirm(int oid) {
        try {
            personalCenterMapper.updateConfirm(oid);
        }catch (Exception e){
            e.printStackTrace();
            return 1;
        }
        return 0;
    }


}
