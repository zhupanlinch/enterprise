package com.enterprise.controller.manage;

import com.enterprise.cache.FrontCache;
import com.enterprise.controller.BaseController;
import com.enterprise.entity.Image;
import com.enterprise.service.ImageService;
import com.enterprise.service.Services;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;

/**
 * 图片空间
 */
@Controller
@RequestMapping("/manage/image/")
public class ImageAction extends BaseController<Image>{
    private static final String page_toList = "/manage/image/imageList";
    private static final String page_toEdit = "/manage/image/imageEdit";
    private static final String page_toAdd = "/manage/image/imageEdit";
    @Autowired
    private ImageService imageService;
    @Autowired
    private FrontCache frontCache;
    @Override
    public Services<Image> getService() {
        return imageService;
    }
    public ImageAction(){
        super.page_toList = page_toList;
        super.page_toEdit = page_toEdit;
        super.page_toAdd = page_toAdd;
    }

    @Override
    public String insert(HttpServletRequest request, @ModelAttribute("e") Image image, RedirectAttributes flushAttrs) throws Exception {
        imageService.insert(image);
        insertAfter(image);
        addMessage(flushAttrs,"操作成功！");
        frontCache.loadArticleCategroy();//加载缓存
        return "redirect:selectList";
    }

    @Override
    public String update(HttpServletRequest request, @ModelAttribute("e") Image image, RedirectAttributes flushAttrs) throws Exception {
        imageService.update(image);
        insertAfter(image);
        addMessage(flushAttrs, "操作成功！");
        frontCache.loadArticleCategroy();//加载缓存
        return "redirect:selectList";
    }
    @RequestMapping("delete")
    public String delete(HttpServletRequest request, @ModelAttribute("e") Image image, RedirectAttributes flushAttrs) throws Exception{
        imageService.delete(image);
        insertAfter(image);
        addMessage(flushAttrs, "操作成功！");
        frontCache.loadArticleCategroy();//加载缓存
        return "redirect:selectList";
    }

}
