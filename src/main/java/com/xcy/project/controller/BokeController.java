package com.xcy.project.controller;

import com.sun.org.apache.xpath.internal.operations.Mod;
import com.xcy.project.pojo.Admin;
import com.xcy.project.pojo.Boke;
import com.xcy.project.pojo.Skill;
import com.xcy.project.service.AdminService;
import com.xcy.project.service.BokeService;
import com.xcy.project.service.SkillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
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
    @Autowired
    SkillService skillService;
    @Autowired
    AdminService adminService;

    @RequestMapping("showBoke")
    public String showBoke(Model model){
        List<Boke> bokeList = bokeService.selectAllBokeForBefore();
        model.addAttribute("bokeList",bokeList);
        return "behind/boke";
    }

    @RequestMapping("addBoke")
    public String addBoke(Model model){
        List<Skill> skillList = skillService.selectAllSkillType();
        model.addAttribute("skillList",skillList);
        return "behind/addBoke";
    }

    @RequestMapping("edit")
    public String editById(int id, Model model){
        Boke boke = bokeService.selectBokeById(id);
        model.addAttribute("boke",boke);
        return "behind/addBoke";
    }

    @RequestMapping("saveOrUpdate")
    @ResponseBody
    public String saveOrUpdate(Boke boke, HttpSession session){
        Object email = session.getAttribute("admin");
        Admin admin = adminService.selectByEmail(email);
        boke.setSpeakerId(admin.getSpeakerId());
        System.out.println(boke);
        if (boke.getId() == 0){
            bokeService.saveBoke(boke);
        } else {
            bokeService.updateBokeById(boke);
        }
        return "success";
    }
}
