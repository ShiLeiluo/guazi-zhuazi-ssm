package com.service;

import com.entity.Title;

/**
 * @author SL
 * @date 2019/8/20 星期二 10:36
 * guazi/com.service/TitleService
 */
public interface TitleService {
    Title getTitleByAdcode(String adcode);
    Title getTitleByCityname(String cityname);
}
