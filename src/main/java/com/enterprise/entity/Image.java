package com.enterprise.entity;

import com.enterprise.entity.page.PageModel;

import java.io.Serializable;

/**
 * 关于我们
 * Created by Cesiumai on 2016/7/14.
 */
public class Image extends PageModel implements Serializable{
    private static final long serialVersionUID = 1L;
    private String image;
    private String title;

    @Override
    public void clean() {
        super.clean();
        image=null;
        title=null;
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
}
