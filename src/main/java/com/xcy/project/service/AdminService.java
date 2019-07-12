package com.xcy.project.service;

import com.xcy.project.pojo.Admin;

public interface AdminService {

  boolean validateEmail(Admin email);

  void insertAdmin(Admin admin);

  boolean validateAdmin(Admin admin);

  Admin selectByEmail(Object email);
}
