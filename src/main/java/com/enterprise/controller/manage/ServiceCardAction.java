package com.enterprise.controller.manage;

import com.enterprise.cache.FrontCache;
import com.enterprise.controller.BaseController;
import com.enterprise.entity.ServiceCard;
import com.enterprise.service.ServiceCardService;
import com.enterprise.service.Services;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;

/**
 * 服务卡片
 */
@Controller
@RequestMapping("/manage/serviceCard/")
public class ServiceCardAction extends BaseController<ServiceCard>{
    private static final String page_toList = "/manage/serviceCard/list";
    private static final String page_toEdit = "/manage/serviceCard/edit";
    private static final String page_toAdd = "/manage/serviceCard/edit";
    @Autowired
    private ServiceCardService serviceCardService;
    @Autowired
    private FrontCache frontCache;
    @Override
    public Services<ServiceCard> getService() {
        return serviceCardService;
    }
    public ServiceCardAction(){
        super.page_toList = page_toList;
        super.page_toEdit = page_toEdit;
        super.page_toAdd = page_toAdd;
    }

    @Override
    public String insert(HttpServletRequest request, @ModelAttribute("e") ServiceCard entity, RedirectAttributes flushAttrs) throws Exception {
        serviceCardService.insert(entity);
        insertAfter(entity);
        addMessage(flushAttrs,"操作成功！");
        frontCache.loadArticleCategroy();//加载缓存
        return "redirect:selectList";
    }

    @Override
    public String update(HttpServletRequest request, @ModelAttribute("e") ServiceCard entity, RedirectAttributes flushAttrs) throws Exception {
        serviceCardService.update(entity);
        insertAfter(entity);
        addMessage(flushAttrs, "操作成功！");
        frontCache.loadArticleCategroy();//加载缓存
        return "redirect:selectList";
    }
    @RequestMapping("delete")
    public String delete(HttpServletRequest request, @ModelAttribute("e") ServiceCard entity, RedirectAttributes flushAttrs) throws Exception{
        serviceCardService.delete(entity);
        insertAfter(entity);
        addMessage(flushAttrs, "操作成功！");
        frontCache.loadArticleCategroy();//加载缓存
        return "redirect:selectList";
    }

}
