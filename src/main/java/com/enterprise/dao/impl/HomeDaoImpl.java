package com.enterprise.dao.impl;

import com.enterprise.dao.BaseDao;
import com.enterprise.dao.HomeDao;
import com.enterprise.entity.Home;
import com.enterprise.entity.page.PageModel;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository("homeDao")
public class HomeDaoImpl implements HomeDao {
    @Resource
    private BaseDao dao;

    public void setDao(BaseDao dao) {
        this.dao = dao;
    }

    @Override
    public int insert(Home entity) {
        return dao.insert("home.insert",entity);
    }

    @Override
    public int delete(Home entity) {
        return dao.insert("home.delete",entity);
    }

    @Override
    public int update(Home entity) {
        return dao.delete("home.update",entity);
    }

    @Override
    public Home selectOne(Home entity) {
        return (Home) dao.selectOne("home.selectOne",entity);
    }

    @Override
    public PageModel selectPageList(Home entity) {
        return dao.selectPageList("home.selectPageList","home.selectPageCount",entity);
    }

    @Override
    public List<Home> selectList(Home entity) {
        return dao.selectList("home.selectList",entity);
    }

    @Override
    public int deleteById(int id) {
        return dao.delete("home.deleteById",id);
    }

    @Override
    public Home selectById(int id) {
        return (Home) dao.selectOne("home.selectById",id);
    }
}
