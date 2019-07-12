package com.xcy.project.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class Project {
  private int id;
  private String projectName;
  private String detail;
  private String uploadTime;
  private String author;
  private String projectBeforeUrl;
  private String projectBehindUrl;
  private int skillId;
  private String skillType;
  private String imageOneUrl;
  private String imageTwoUrl;
  private String imageThreeUrl;
  private String imageFourUrl;
  private String imageFiveUrl;
}
