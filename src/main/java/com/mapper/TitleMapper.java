package com.mapper;

import com.entity.Title;

/**
 * @author SL
 * @date 2019/8/20 星期二 10:32
 * guazi/com.mapper/GuaziMapper
 */
public interface TitleMapper {
    Title getTitleByAdcode(String adcode);
    Title getTitleByCityname(String cityname);
}
