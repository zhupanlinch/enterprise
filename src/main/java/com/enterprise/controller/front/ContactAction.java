package com.enterprise.controller.front;

import com.enterprise.cache.FrontCache;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 联系我们
 */
@Controller("contactActionController")
@RequestMapping("/")
public class ContactAction{

    @Autowired
    private FrontCache frontCache;

    @RequestMapping("contact")
    public String contact() {
        return frontCache.getSyle() + "/contact/contact";
    }

}
