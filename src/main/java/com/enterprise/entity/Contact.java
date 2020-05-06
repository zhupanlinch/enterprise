package com.enterprise.entity;

import com.enterprise.entity.page.PageModel;

import java.io.Serializable;

/**
 * 联系我们
 * * Created by Cesiumai on 2016/7/8.
 */
public class Contact extends PageModel implements Serializable{
    private static final long serialVersionUID = 1L;
    private String contentHtml;
    private String address;
    private String mail;
    private String phone;

    @Override
    public void clean() {
        super.clean();
        contentHtml=null;
    }

    public String getContentHtml() {
        return contentHtml;
    }

    public void setContentHtml(String contentHtml) {
        this.contentHtml = contentHtml;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
