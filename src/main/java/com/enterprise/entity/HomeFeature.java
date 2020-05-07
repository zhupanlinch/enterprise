package com.enterprise.entity;

import com.enterprise.entity.page.PageModel;

import java.io.Serializable;

/**
 * 首页历程
 */
public class HomeFeature extends PageModel implements Serializable{
    private static final long serialVersionUID = 1L;
    private String image;
    private String title;
    private String content;

    @Override
    public void clean() {
        super.clean();
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
