package com.enterprise.dao.impl;

import com.enterprise.dao.BaseDao;
import com.enterprise.dao.ServiceCardDao;
import com.enterprise.entity.ServiceCard;
import com.enterprise.entity.page.PageModel;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository("serviceCardDao")
public class ServiceCardDaoImpl implements ServiceCardDao {
    @Resource
    private BaseDao dao;

    public void setDao(BaseDao dao) {
        this.dao = dao;
    }

    @Override
    public int insert(ServiceCard about) {
        return dao.insert("serviceCard.insert",about);
    }

    @Override
    public int delete(ServiceCard about) {
        return dao.insert("serviceCard.delete",about);
    }

    @Override
    public int update(ServiceCard about) {
        return dao.delete("serviceCard.update",about);
    }

    @Override
    public ServiceCard selectOne(ServiceCard about) {
        return (ServiceCard) dao.selectOne("serviceCard.selectOne",about);
    }

    @Override
    public PageModel selectPageList(ServiceCard about) {
        return dao.selectPageList("serviceCard.selectPageList","serviceCard.selectPageCount",about);
    }

    @Override
    public List<ServiceCard> selectList(ServiceCard about) {
        return dao.selectList("serviceCard.selectList",about);
    }

    @Override
    public int deleteById(int id) {
        return dao.delete("serviceCard.deleteById",id);
    }

    @Override
    public ServiceCard selectById(int id) {
        return (ServiceCard) dao.selectOne("serviceCard.selectById",id);
    }
}
