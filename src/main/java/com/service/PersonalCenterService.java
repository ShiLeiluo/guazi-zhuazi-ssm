package com.service;


import com.entity.Collections;
import com.entity.UndoneOrder;
import com.entity.User;

import java.util.List;

/**
 * @author SL
 * @date 2019/8/28 星期三 16:10
 * guazi/com.service/PersonalCenterService
 */
public interface PersonalCenterService {
    int updateUser(User user);
    List<UndoneOrder> undoneorder(int userid);
    List<UndoneOrder> historyOrder(int userid);
    List<UndoneOrder> confirmsell(String phone);
    List<Collections> collection(int userid);
    int deleteundoneoreder(int oid);
    int deletecollection(int cid);
    int deleteunchecksell(int id);
    int deletecheckedsell(int id);
    int updateConfirm(int oid);
}
