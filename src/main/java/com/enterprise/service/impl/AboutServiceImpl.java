package com.enterprise.service.impl;

import com.enterprise.dao.ServersManage;
import com.enterprise.entity.About;
import com.enterprise.service.AboutService;
import com.enterprise.dao.AboutDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("aboutService")
public class AboutServiceImpl extends ServersManage<About,AboutDao> implements AboutService{
    @Override
    @Resource(name="aboutDao")
    public void setDao(AboutDao dao) {
        this.dao=dao;
    }
}
