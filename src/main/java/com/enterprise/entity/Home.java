package com.enterprise.entity;

import com.enterprise.entity.page.PageModel;

import java.io.Serializable;

/**
 * 首页
 */
public class Home extends PageModel implements Serializable{
    private static final long serialVersionUID = 1L;
    private int id;
    private String image;
    private String title1;
    private String title2;
    private String content1;
    private String content2;
    private String feature_title;
    private String feature_content;

    @Override
    public void clean() {
        super.clean();
        id = 0;
    }

    @Override
    public int getId() {
        return id;
    }

    @Override
    public void setId(int id) {
        this.id = id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getTitle1() {
        return title1;
    }

    public void setTitle1(String title1) {
        this.title1 = title1;
    }

    public String getTitle2() {
        return title2;
    }

    public void setTitle2(String title2) {
        this.title2 = title2;
    }

    public String getContent1() {
        return content1;
    }

    public void setContent1(String content1) {
        this.content1 = content1;
    }

    public String getContent2() {
        return content2;
    }

    public void setContent2(String content2) {
        this.content2 = content2;
    }

    public String getFeature_title() {
        return feature_title;
    }

    public void setFeature_title(String feature_title) {
        this.feature_title = feature_title;
    }

    public String getFeature_content() {
        return feature_content;
    }

    public void setFeature_content(String feature_content) {
        this.feature_content = feature_content;
    }
}
