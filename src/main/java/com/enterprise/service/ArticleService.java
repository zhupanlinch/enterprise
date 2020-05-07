package com.enterprise.service;

import com.enterprise.entity.Article;

public interface ArticleService extends Services<Article>{
    Article selectPrevious(int id);
    Article selectNext(int id);
}
