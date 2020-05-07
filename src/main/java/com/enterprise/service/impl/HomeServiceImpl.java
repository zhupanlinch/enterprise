package com.enterprise.service.impl;

import com.enterprise.dao.HomeDao;
import com.enterprise.dao.ServersManage;
import com.enterprise.entity.Home;
import com.enterprise.service.HomeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("homeService")
public class HomeServiceImpl extends ServersManage<Home,HomeDao> implements HomeService{
    @Override
    @Resource(name="homeDao")
    public void setDao(HomeDao dao) {
        this.dao=dao;
    }
}
