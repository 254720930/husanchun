package com.xcy.project.pojo;

public class Admin {
  private String email;
  private String password;
  private int id;
  private String adminRole;
  private int speakerId;

  public int getSpeakerId() {
    return speakerId;
  }

  public void setSpeakerId(int speakerId) {
    this.speakerId = speakerId;
  }

  public String getAdminRole() {
    return adminRole;
  }

  public void setAdminRole(String adminRole) {
    this.adminRole = adminRole;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }
}
