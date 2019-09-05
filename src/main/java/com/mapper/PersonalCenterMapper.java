package com.mapper;

import com.entity.Collections;
import com.entity.UndoneOrder;
import com.entity.User;

import java.util.List;

/**
 * @author SL
 * @date 2019/8/28 星期三 16:01
 * guazi/com.mapper/PersonalCenterMapper
 */
public interface PersonalCenterMapper {
    void updateUser(User user);
    List<UndoneOrder> undoneorder(int userid);
    List<UndoneOrder> historyOrder(int userid);
    List<UndoneOrder> confirmsell(String phone);
    List<Collections> collection(int userid);
    void deleteundoneoreder(int oid);
    void deletecollection(int cid);
    void deleteunchecksell(int id);
    void deletecheckedsell(int id);
    void updateConfirm(int oid);
}
