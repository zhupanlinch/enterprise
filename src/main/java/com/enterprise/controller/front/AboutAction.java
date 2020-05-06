package com.enterprise.controller.front;

import com.enterprise.cache.FrontCache;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 关于我们
 * Created by Cesiumai on 2016/7/8.
 */
@Controller("aboutActionController")
@RequestMapping("/")
public class AboutAction {

    @Autowired
    private FrontCache frontCache;

    @RequestMapping("about")
    public String contact() {
        return frontCache.getSyle() + "/about/about";
    }

}
