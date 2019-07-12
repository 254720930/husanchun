package com.xcy.project.controller;

import com.xcy.project.pojo.Boke;
import com.xcy.project.pojo.Project;
import com.xcy.project.pojo.Speaker;
import com.xcy.project.service.BokeService;
import com.xcy.project.service.ProjectService;
import com.xcy.project.service.SpeakerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @Auther: http://www/qfedu.com
 * @Date: 2019/7/9
 * @Description:
 * @version: 1.0
 */

@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    ProjectService projectService;
    @Autowired
    BokeService bokeService;
    @Autowired
    SpeakerService speakerService;


    @RequestMapping("index")
    public String showIndex(Model model){
        List<Project> projectList = projectService.selectAllProjectForBefore();
        model.addAttribute("projectList",projectList);
        System.out.println(projectList);
        List<Boke> bokeList = bokeService.selectAllBokeForBefore();
        model.addAttribute("bokeList",bokeList);
        List<Speaker> speakers = speakerService.selectAllSpeakerForBefore();
        model.addAttribute("speakerList",speakers);
        return "before/index";

    }
}
