package com.enterprise.service.impl;

import com.enterprise.dao.AboutUserDao;
import com.enterprise.dao.ServersManage;
import com.enterprise.entity.AboutUser;
import com.enterprise.service.AboutUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("aboutUserService")
public class AboutUserServiceImpl extends ServersManage<AboutUser,AboutUserDao> implements AboutUserService{
    @Override
    @Resource(name="aboutUserDao")
    public void setDao(AboutUserDao dao) {
        this.dao=dao;
    }
}
