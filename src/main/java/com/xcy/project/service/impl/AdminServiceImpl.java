package com.xcy.project.service.impl;

import com.xcy.project.mapper.AdminMapper;
import com.xcy.project.pojo.Admin;
import com.xcy.project.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {
  @Autowired AdminMapper adminMapper;

  public boolean validateEmail(Admin admin) {
    int result = adminMapper.validateEmail(admin);
    return result > 0 ? false : true;
  }

  public void insertAdmin(Admin admin) {
    adminMapper.insertAdmin(admin);
  }

  public boolean validateAdmin(Admin admin) {
    int result = adminMapper.validateAdmin(admin);

    return result > 0 ? true : false;
  }

  public Admin selectByEmail(Object email) {
    return adminMapper.selectByEmail(email);
  }
}
