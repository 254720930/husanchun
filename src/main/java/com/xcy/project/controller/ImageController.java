package com.xcy.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/image")
public class ImageController {

  @RequestMapping("/list")
  public String showImage() {
    return "behind/img";
  }
}
