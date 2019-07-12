package com.xcy.project.service.impl;

import com.xcy.project.mapper.ProjectMapper;
import com.xcy.project.pojo.Project;
import com.xcy.project.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProjectServiceImpl implements ProjectService {

  @Autowired ProjectMapper projectMapper;

  public List<Project> selectAllProject(Project project) {

    return projectMapper.selectAllProject(project);
  }

  public void saveOrUpdate(Project project) {
    System.out.println(project.getId());
    if (project.getId() != 0) {
      projectMapper.updateProjectById(project);
    } else {
      projectMapper.addProjectById(project);
    }
  }

  public Project selectProjectById(int id) {
    return projectMapper.selectProjectById(id);
  }

  public void deleteProjectById(int id) {
    projectMapper.deleteProjectById(id);
  }

  public List<Project> selectAllProjectForBefore() {
    return projectMapper.selectAllProjectForBefore();
  }

  public void saveImg(Project project) {
    projectMapper.saveImg(project);
  }
}
