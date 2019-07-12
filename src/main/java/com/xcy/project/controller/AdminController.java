package com.xcy.project.controller;

import com.xcy.project.pojo.Admin;
import com.xcy.project.service.AdminService;
import com.xcy.project.utils.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController {

  @Autowired AdminService adminService;

  @RequestMapping("/validateEmail")
  @ResponseBody
  public String validateEmail(Admin admin) {
    boolean result = adminService.validateEmail(admin);
    return result ? "success" : "fail";
  }

  @RequestMapping("/insertAdmin")
  @ResponseBody
  public String insertAdmin(Admin admin) {
    String newPass = MD5Utils.getMd5(admin.getPassword());
    admin.setPassword(newPass);
    System.out.println(admin.getEmail());

    adminService.insertAdmin(admin);
    return "success";
  }

  @RequestMapping("/afterLogin")
  public String afterLogin() {
    return "redirect:../login.jsp";
  }

  @RequestMapping("/login")
  @ResponseBody
  public String login(Admin admin, HttpSession session) {
    String newPass = MD5Utils.getMd5(admin.getPassword());
    admin.setPassword(newPass);
    System.out.println(newPass);
    boolean result = adminService.validateAdmin(admin);
    if (result) {
      session.setAttribute("admin", admin.getEmail());
      return "success";
    } else {
      return "fail";
    }
  }

  @RequestMapping("/logOut")
  public String logOut(HttpSession session) {
    session.removeAttribute("admin");
    return "redirect:../login.jsp";
  }

  @RequestMapping("/index")
  public String index(HttpSession session, Model model) {
    Object email = session.getAttribute("admin");
    Admin admin = adminService.selectByEmail(email);
    model.addAttribute("admin", admin);
    return "behind/index";
  }

  @RequestMapping("/register")
  public String register() {
    return "/behind/register";
  }
}
