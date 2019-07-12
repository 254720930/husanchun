package com.xcy.project.controller;

import com.xcy.project.pojo.Project;
import com.xcy.project.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/project")
public class ProjectController {

  @Autowired ProjectService projectService;

  @RequestMapping("/list")
  public String showProject(Model model, Project project) {

    List<Project> projectList = projectService.selectAllProject(project);

    model.addAttribute("projectList", projectList);
    return "behind/projects";
  }

  @RequestMapping("/showPage")
  public String showPage() {

    return "behind/addProject";
  }

  @RequestMapping("/edit")
  public String edit(int id, Model model) {
    Project project = projectService.selectProjectById(id);
    model.addAttribute("project", project);
    return "behind/addProject";
  }

  @RequestMapping("/saveOrUpdate")
  public String saveOrUpdate(Project project) {
    System.out.println(project.getId());
    projectService.saveOrUpdate(project);

    return "redirect:/project/list";
  }

  @RequestMapping("/delete")
  public String delete(int id) {
    projectService.deleteProjectById(id);
    return "redirect:/project/list";
  }
}
