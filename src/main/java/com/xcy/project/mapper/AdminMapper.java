package com.xcy.project.mapper;

import com.xcy.project.pojo.Admin;

public interface AdminMapper {
  int validateEmail(Admin admin);

  void insertAdmin(Admin admin);

  int validateAdmin(Admin admin);

  Admin selectByEmail(Object email);
}
