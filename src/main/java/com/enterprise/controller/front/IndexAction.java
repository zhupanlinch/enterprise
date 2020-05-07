package com.enterprise.controller.front;

import com.enterprise.cache.FrontCache;
import com.enterprise.entity.Home;
import com.enterprise.entity.HomeFeature;
import com.enterprise.service.HomeFeatureService;
import com.enterprise.service.HomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * 主页
 */
@Controller
@RequestMapping("/")
public class IndexAction {

    @Autowired
    private FrontCache frontCache;

    @Autowired
    private HomeService homeService;

    @Autowired
    private HomeFeatureService homeFeatureService;

    @RequestMapping({"/", "/index"})
    public String index(HttpServletRequest request) {
        request.setAttribute("homeData", homeService.selectOne(new Home()));
        request.setAttribute("homeFeatureData", homeFeatureService.selectList(new HomeFeature()));
        return frontCache.getSyle() + "/index";
    }

    @RequestMapping("/template/{style}")
    public String index(@PathVariable("style") String style) {
        return "/" + style + "/index";
    }


}

