package com.enterprise.dao.impl;

import com.enterprise.dao.BaseDao;
import com.enterprise.dao.HomeFeatureDao;
import com.enterprise.entity.HomeFeature;
import com.enterprise.entity.page.PageModel;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository("homeFeatureDao")
public class HomeFeatureDaoImpl implements HomeFeatureDao {
    @Resource
    private BaseDao dao;

    public void setDao(BaseDao dao) {
        this.dao = dao;
    }

    @Override
    public int insert(HomeFeature entity) {
        return dao.insert("homeFeatures.insert",entity);
    }

    @Override
    public int delete(HomeFeature entity) {
        return dao.insert("homeFeatures.delete",entity);
    }

    @Override
    public int update(HomeFeature entity) {
        return dao.delete("homeFeatures.update",entity);
    }

    @Override
    public HomeFeature selectOne(HomeFeature entity) {
        return (HomeFeature) dao.selectOne("homeFeatures.selectOne",entity);
    }

    @Override
    public PageModel selectPageList(HomeFeature entity) {
        return dao.selectPageList("homeFeatures.selectPageList","homeFeatures.selectPageCount",entity);
    }

    @Override
    public List<HomeFeature> selectList(HomeFeature entity) {
        return dao.selectList("homeFeatures.selectList",entity);
    }

    @Override
    public int deleteById(int id) {
        return dao.delete("homeFeatures.deleteById",id);
    }

    @Override
    public HomeFeature selectById(int id) {
        return (HomeFeature) dao.selectOne("homeFeatures.selectById",id);
    }
}
