package com.enterprise.controller.front;

import com.enterprise.cache.FrontCache;
import com.enterprise.entity.Service;
import com.enterprise.service.ServiceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * 服务领域
 * Created by Cesiumai on 2016/7/26.
 */
@Controller("serviceActionController")
@RequestMapping("/")
public class ServiceAction {

    @Autowired
    private FrontCache frontCache;
    @Autowired
    private ServiceService serviceService;

    /**
     * 跳转到“服务领域”
     * @return
     * @throws Exception
     */
    @RequestMapping("service")
    public String service(HttpServletRequest request) throws Exception {
        request.setAttribute("data", serviceService.selectList(new Service()));
        return frontCache.getSyle() + "/service/serviceList";
    }
    @RequestMapping("service/{id}")
    public String selectOne(HttpServletRequest request, @ModelAttribute("id")@PathVariable("id") String id, @ModelAttribute("e") Service service) throws Exception {
        request.setAttribute("id", id);
        return frontCache.getSyle() + "/service/serviceList";
    }
}
