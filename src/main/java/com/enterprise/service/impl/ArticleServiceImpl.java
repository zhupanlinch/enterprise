package com.enterprise.service.impl;

import com.enterprise.dao.ServersManage;
import com.enterprise.entity.Article;
import com.enterprise.service.ArticleService;
import com.enterprise.dao.ArticleDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("articleService")
public class ArticleServiceImpl extends ServersManage<Article,ArticleDao> implements ArticleService {

    @Override
    @Resource(name="articleDao")
    public void setDao(ArticleDao dao) {
        this.dao = dao;
    }

    @Override
    public Article selectPrevious(int id) {
        return dao.selectPrevious(id);
    }

    @Override
    public Article selectNext(int id) {
        return dao.selectNext(id);
    }
}
