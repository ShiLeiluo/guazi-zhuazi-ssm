package com.service.impl;

import com.entity.Title;
import com.mapper.TitleMapper;
import com.service.TitleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author SL
 * @date 2019/8/20 星期二 10:37
 * guazi/com.service.impl/TitleServiceImpl
 */
@Service
public class TitleServiceImpl implements TitleService {
    @Autowired
    private TitleMapper titleMapper;

    @Override
    public Title getTitleByAdcode(String adcode) {
        return titleMapper.getTitleByAdcode(adcode);
    }

    @Override
    public Title getTitleByCityname(String cityname) {
        return titleMapper.getTitleByCityname(cityname);
    }
}
