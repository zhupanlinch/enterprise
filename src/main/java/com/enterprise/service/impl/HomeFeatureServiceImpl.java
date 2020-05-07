package com.enterprise.service.impl;

import com.enterprise.dao.HomeFeatureDao;
import com.enterprise.dao.ServersManage;
import com.enterprise.entity.HomeFeature;
import com.enterprise.service.HomeFeatureService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("homeFeatureService")
public class HomeFeatureServiceImpl extends ServersManage<HomeFeature,HomeFeatureDao> implements HomeFeatureService{
    @Override
    @Resource(name="homeFeatureDao")
    public void setDao(HomeFeatureDao dao) {
        this.dao=dao;
    }
}
