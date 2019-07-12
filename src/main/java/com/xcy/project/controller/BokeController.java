package com.xcy.project.controller;

import com.sun.org.apache.xpath.internal.operations.Mod;
import com.xcy.project.pojo.Boke;
import com.xcy.project.service.BokeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @Auther: http://www/qfedu.com
 * @Date: 2019/7/11
 * @Description:
 * @version: 1.0
 */

@Controller
@RequestMapping("boke")
public class BokeController {

    @Autowired
    BokeService bokeService;

    @RequestMapping("showBoke")
    public String showBoke(Model model){
        List<Boke> bokeList = bokeService.selectAllBokeForBefore();
        model.addAttribute("bokeList",bokeList);
        return "behind/boke";
    }

    @RequestMapping("addBoke")
    public String addBoke(){
        return "behind/addBoke";
    }

    @RequestMapping("edit")
    public String editById(int id, Model model){
        Boke boke = bokeService.selectBokeById(id);
        model.addAttribute("boke",boke);
        return "behind/addBoke";
    }
}
