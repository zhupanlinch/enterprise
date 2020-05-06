package com.enterprise.controller.front;

import com.enterprise.cache.FrontCache;
import com.enterprise.entity.Image;
import com.enterprise.service.ImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * 图片空间
 */
@Controller("imagenActionController")
@RequestMapping("/")
public class ImageAction {

    @Autowired
    private FrontCache frontCache;

    @Autowired
    private ImageService imageService;

    @RequestMapping("image")
    public String list(HttpServletRequest request, Image image) {
        request.setAttribute("data", imageService.selectList(image));
        return frontCache.getSyle() + "/image/image";
    }

}
