package com.xcy.project.mapper;

import com.xcy.project.pojo.Project;

import java.util.List;

public interface ProjectMapper {
  List<Project> selectAllProject(Project project);

  void updateProjectById(Project project);

  void addProjectById(Project project);

  Project selectProjectById(int id);

  void deleteProjectById(int id);

  List<Project> selectAllProjectForBefore();

  void saveImg(Project project);
}
