package com.enterprise.controller.manage;

import com.enterprise.cache.FrontCache;
import com.enterprise.controller.BaseController;
import com.enterprise.entity.HomeFeature;
import com.enterprise.service.HomeFeatureService;
import com.enterprise.service.Services;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;

/**
 * 首页历程信息
 */
@Controller
@RequestMapping("/manage/homeFeature/")
public class HomeFeatureAction extends BaseController<HomeFeature>{
    private static final String page_toList = "/manage/homeFeature/list";
    private static final String page_toEdit = "/manage/homeFeature/edit";
    private static final String page_toAdd = "/manage/homeFeature/edit";
    @Autowired
    private HomeFeatureService homeFeatureService;
    @Autowired
    private FrontCache frontCache;
    @Override
    public Services<HomeFeature> getService() {
        return homeFeatureService;
    }
    public HomeFeatureAction(){
        super.page_toList = page_toList;
        super.page_toEdit = page_toEdit;
        super.page_toAdd = page_toAdd;
    }

    @Override
    public String insert(HttpServletRequest request, @ModelAttribute("e") HomeFeature entity, RedirectAttributes flushAttrs) throws Exception {
        getService().insert(entity);
        insertAfter(entity);
        addMessage(flushAttrs,"操作成功！");
        return "redirect:selectList";
    }

    @Override
    public String update(HttpServletRequest request, @ModelAttribute("e") HomeFeature entity, RedirectAttributes flushAttrs) throws Exception {
        getService().update(entity);
        insertAfter(entity);
        addMessage(flushAttrs, "操作成功！");
        return "redirect:selectList";
    }
    @RequestMapping("delete")
    public String delete(HttpServletRequest request, @ModelAttribute("e") HomeFeature entity, RedirectAttributes flushAttrs) throws Exception{
        getService().delete(entity);
        insertAfter(entity);
        addMessage(flushAttrs, "操作成功！");
        return "redirect:selectList";
    }

}
