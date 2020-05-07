package com.enterprise.controller.front;

import com.enterprise.cache.FrontCache;
import com.enterprise.entity.AboutUser;
import com.enterprise.service.AboutUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * 关于我们
 */
@Controller("aboutActionController")
@RequestMapping("/")
public class AboutAction {

    @Autowired
    private FrontCache frontCache;

    @Autowired
    private AboutUserService aboutUserService;

    @RequestMapping("about")
    public String contact(HttpServletRequest request) {
        request.setAttribute("aboutUserData", aboutUserService.selectList(new AboutUser()));
        return frontCache.getSyle() + "/about/about";
    }

}
