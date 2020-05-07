package com.enterprise.controller.front;

import com.enterprise.cache.FrontCache;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 主页
 */
@Controller
@RequestMapping("/")
public class IndexAction {

    @Autowired
    private FrontCache frontCache;

    @RequestMapping({"/", "/index"})
    public String index() {
        return frontCache.getSyle() + "/index";
    }

    @RequestMapping("/template/{style}")
    public String index(@PathVariable("style") String style) {
        return "/" + style + "/index";
    }


}

