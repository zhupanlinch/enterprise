package com.enterprise.dao.impl;

import com.enterprise.dao.BaseDao;
import com.enterprise.dao.AboutUserDao;
import com.enterprise.entity.AboutUser;
import com.enterprise.entity.page.PageModel;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository("aboutUserDao")
public class AboutUserDaoImpl implements AboutUserDao {
    @Resource
    private BaseDao dao;

    public void setDao(BaseDao dao) {
        this.dao = dao;
    }

    @Override
    public int insert(AboutUser entity) {
        return dao.insert("aboutUser.insert",entity);
    }

    @Override
    public int delete(AboutUser entity) {
        return dao.insert("aboutUser.delete",entity);
    }

    @Override
    public int update(AboutUser entity) {
        return dao.delete("aboutUser.update",entity);
    }

    @Override
    public AboutUser selectOne(AboutUser entity) {
        return (AboutUser) dao.selectOne("aboutUser.selectOne",entity);
    }

    @Override
    public PageModel selectPageList(AboutUser entity) {
        return dao.selectPageList("aboutUser.selectPageList","aboutUser.selectPageCount",entity);
    }

    @Override
    public List<AboutUser> selectList(AboutUser entity) {
        return dao.selectList("aboutUser.selectList",entity);
    }

    @Override
    public int deleteById(int id) {
        return dao.delete("aboutUser.deleteById",id);
    }

    @Override
    public AboutUser selectById(int id) {
        return (AboutUser) dao.selectOne("aboutUser.selectById",id);
    }
}
