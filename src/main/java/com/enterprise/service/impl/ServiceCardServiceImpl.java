package com.enterprise.service.impl;

import com.enterprise.dao.ServersManage;
import com.enterprise.dao.ServiceCardDao;
import com.enterprise.entity.ServiceCard;
import com.enterprise.service.ServiceCardService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("serviceCardService")
public class ServiceCardServiceImpl extends ServersManage<ServiceCard,ServiceCardDao> implements ServiceCardService{
    @Override
    @Resource(name="serviceCardDao")
    public void setDao(ServiceCardDao dao) {
        this.dao=dao;
    }
}
