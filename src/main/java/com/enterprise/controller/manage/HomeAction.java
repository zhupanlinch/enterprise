package com.enterprise.controller.manage;

import com.enterprise.cache.FrontCache;
import com.enterprise.controller.BaseController;
import com.enterprise.entity.Home;
import com.enterprise.service.HomeService;
import com.enterprise.service.Services;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;

/**
 * 首页
 */
@Controller
@RequestMapping("/manage/home/")
public class HomeAction extends BaseController<Home>{
    private static final String page_toList = "/manage/home/list";
    private static final String page_toEdit = "/manage/home/edit";
    private static final String page_toAdd = "/manage/home/edit";
    @Autowired
    private HomeService homeService;
    @Autowired
    private FrontCache frontCache;
    @Override
    public Services<Home> getService() {
        return homeService;
    }
    public HomeAction(){
        super.page_toList = page_toList;
        super.page_toEdit = page_toEdit;
        super.page_toAdd = page_toAdd;
    }

    /**
     * 转到编辑界面
     */
    @Override
    @RequestMapping("toEdit")
    public String toEdit(@ModelAttribute("e") Home e,ModelMap model) throws Exception{
        e = getService().selectOne(e);
        if(e==null){
            e = new Home();
        }
        model.addAttribute("e", e);
        return page_toEdit;
    }

    /**
     * 插入或者更新数据
     * @param request
     * @param e
     * @param model
     * @param flushAttrs
     * @return
     * @throws Exception
     */
    @RequestMapping(value="insertOrUpdate",method=RequestMethod.POST)
    public String insertOrUpdate(HttpServletRequest request, Home e, ModelMap model,RedirectAttributes flushAttrs) throws Exception{
        synchronized (this) {
            if(e.getId()==0){
                insert(request, e, flushAttrs);
            }else{
                Home ss = getService().selectById(e.getId());
                if(ss ==null){
                    throw new NullPointerException("根据id"+e.getId()+"找不到");
                }
                super.update(request, e, flushAttrs);
            }
            /**
             * 更新后加载前台缓存
             */
            frontCache.loadAllCache();
        }
        addMessage(flushAttrs, "更新成功!");
        return "redirect:toEdit";
    }
}
