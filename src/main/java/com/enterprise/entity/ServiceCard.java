package com.enterprise.entity;

import com.enterprise.entity.page.PageModel;

import java.io.Serializable;

/**
 * 服务，卡片
 */
public class ServiceCard extends PageModel implements Serializable{
    private static final long serialVersionUID = 1L;
    private String content;
    private String title;

    @Override
    public void clean() {
        super.clean();
        content=null;
        title=null;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
