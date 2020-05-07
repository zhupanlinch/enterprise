package com.enterprise.entity;

import com.enterprise.entity.page.PageModel;

import java.io.Serializable;

/**
 * 关于我们
 */
public class About extends PageModel implements Serializable{
    private static final long serialVersionUID = 1L;
    private String contentHtml;
    private String title;
    private String image;
    private String client;
    private String project;
    private String hours;
    private String worker;
    private String skill_title;
    private String skill_content;
    private String label1;
    private String label2;
    private String label3;
    private String label4;
    private String num1;
    private String num2;
    private String num3;
    private String num4;
    private String worker_title;
    private String worker_content;

    @Override
    public void clean() {
        super.clean();
    }

    public String getContentHtml() {
        return contentHtml;
    }

    public void setContentHtml(String contentHtml) {
        this.contentHtml = contentHtml;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getClient() {
        return client;
    }

    public void setClient(String client) {
        this.client = client;
    }

    public String getProject() {
        return project;
    }

    public void setProject(String project) {
        this.project = project;
    }

    public String getHours() {
        return hours;
    }

    public void setHours(String hours) {
        this.hours = hours;
    }

    public String getWorker() {
        return worker;
    }

    public void setWorker(String worker) {
        this.worker = worker;
    }

    public String getSkill_title() {
        return skill_title;
    }

    public void setSkill_title(String skill_title) {
        this.skill_title = skill_title;
    }

    public String getSkill_content() {
        return skill_content;
    }

    public void setSkill_content(String skill_content) {
        this.skill_content = skill_content;
    }

    public String getLabel1() {
        return label1;
    }

    public void setLabel1(String label1) {
        this.label1 = label1;
    }

    public String getLabel2() {
        return label2;
    }

    public void setLabel2(String label2) {
        this.label2 = label2;
    }

    public String getLabel3() {
        return label3;
    }

    public void setLabel3(String label3) {
        this.label3 = label3;
    }

    public String getLabel4() {
        return label4;
    }

    public void setLabel4(String label4) {
        this.label4 = label4;
    }

    public String getNum1() {
        return num1;
    }

    public void setNum1(String num1) {
        this.num1 = num1;
    }

    public String getNum2() {
        return num2;
    }

    public void setNum2(String num2) {
        this.num2 = num2;
    }

    public String getNum3() {
        return num3;
    }

    public void setNum3(String num3) {
        this.num3 = num3;
    }

    public String getNum4() {
        return num4;
    }

    public void setNum4(String num4) {
        this.num4 = num4;
    }

    public String getWorker_title() {
        return worker_title;
    }

    public void setWorker_title(String worker_title) {
        this.worker_title = worker_title;
    }

    public String getWorker_content() {
        return worker_content;
    }

    public void setWorker_content(String worker_content) {
        this.worker_content = worker_content;
    }
}
