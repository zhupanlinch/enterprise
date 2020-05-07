package com.enterprise.service.impl;

import com.enterprise.dao.ImageDao;
import com.enterprise.dao.ServersManage;
import com.enterprise.entity.Image;
import com.enterprise.service.ImageService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("imageService")
public class ImageServiceImpl extends ServersManage<Image,ImageDao> implements ImageService{
    @Override
    @Resource(name="imageDao")
    public void setDao(ImageDao dao) {
        this.dao=dao;
    }
}
