package com.xcy.project.service;

import com.xcy.project.pojo.Project;

import java.util.List;

public interface ProjectService {
  List<Project> selectAllProject(Project project);

  void saveOrUpdate(Project project);

  Project selectProjectById(int id);

  void deleteProjectById(int id);

  List<Project> selectAllProjectForBefore();

  void saveImg(Project project);
}
