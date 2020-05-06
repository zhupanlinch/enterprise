package com.enterprise.dao.impl;

import com.enterprise.dao.ImageDao;
import com.enterprise.dao.BaseDao;
import com.enterprise.entity.Image;
import com.enterprise.entity.page.PageModel;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository("imageDao")
public class ImageDaoImpl implements ImageDao {
    @Resource
    private BaseDao dao;

    public void setDao(BaseDao dao) {
        this.dao = dao;
    }

    @Override
    public int insert(Image about) {
        return dao.insert("image.insert",about);
    }

    @Override
    public int delete(Image about) {
        return dao.insert("image.delete",about);
    }

    @Override
    public int update(Image about) {
        return dao.delete("image.update",about);
    }

    @Override
    public Image selectOne(Image about) {
        return (Image) dao.selectOne("image.selectOne",about);
    }

    @Override
    public PageModel selectPageList(Image about) {
        return dao.selectPageList("image.selectPageList","image.selectPageCount",about);
    }

    @Override
    public List<Image> selectList(Image about) {
        return dao.selectList("image.selectList",about);
    }

    @Override
    public int deleteById(int id) {
        return dao.delete("image.deleteById",id);
    }

    @Override
    public Image selectById(int id) {
        return (Image) dao.selectOne("image.selectById",id);
    }
}
