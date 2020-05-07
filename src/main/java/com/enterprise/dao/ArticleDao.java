package com.enterprise.dao;


import com.enterprise.entity.Article;

public interface ArticleDao extends DaoManage<Article>{
    Article selectPrevious(int id);
    Article selectNext(int id);
}
