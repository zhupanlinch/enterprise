package com.enterprise.entity;

import com.enterprise.entity.page.PageModel;

import java.io.Serializable;

/**
 * 关于我们，核心职员介绍
 */
public class AboutUser extends PageModel implements Serializable{
    private static final long serialVersionUID = 1L;
    private String name;
    private String job;
    private String image;
    private String content;

    @Override
    public void clean() {
        super.clean();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
