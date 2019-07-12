package com.xcy.project.controller;

import com.xcy.project.pojo.Speaker;
import com.xcy.project.service.SpeakerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/speaker")
public class SpeakerController {

  @Value("${IMAGE_DIR}")
  String imageDir;

  @Value("${IMAGE_URL}")
  String imageURL;

  @Autowired SpeakerService speakerService;

  @RequestMapping("/list")
  public String showSpeaker(Model model, Speaker speaker) {
    List<Speaker> speakerList = speakerService.selectAllSpeaker(speaker);

    model.addAttribute("speakerList", speakerList);
    return "behind/speaker";
  }

  @RequestMapping("/showPage")
  public String showPage() {
    return "behind/addSpeaker";
  }

  @RequestMapping("/edit")
  public String edit(int id, Model model) {
    Speaker speaker = speakerService.selectSpeakerById(id);
    model.addAttribute("speaker", speaker);
    return "behind/addSpeaker";
  }

  @RequestMapping("/saveOrUpdate")
  public String saveOrUpdate(
      Speaker speaker,
      MultipartFile wechat_img,
      MultipartFile img_file,
      MultipartFile QQ_img,
      HttpServletRequest request) {

    // 给上传的QQ图片取一个不会重复的新名字
    String oldQQName = QQ_img.getOriginalFilename();

    String QQSuffixName = oldQQName.substring(oldQQName.lastIndexOf("."));
    String newQQName = UUID.randomUUID().toString().replace("-", "") + QQSuffixName;

    // 给上传的头像取一个不会重复的新名字
    String oldUrlImage = img_file.getOriginalFilename();

    String imgFileSuffixName = oldUrlImage.substring(oldUrlImage.lastIndexOf("."));
    String newImgName = UUID.randomUUID().toString().replace("-", "") + imgFileSuffixName;

    // 给上传的微信图片取一个不会重复的新名字
    String oldWeChatName = wechat_img.getOriginalFilename();
    String WeChatSuffixName = oldWeChatName.substring(oldQQName.lastIndexOf("."));
    String newWeChatName = UUID.randomUUID().toString().replace("-", "") + WeChatSuffixName;

    // 为了将图片归类，以时间的形式创建文件夹
    Date date = new Date();
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    String dirName = dateFormat.format(date);
    String targetName = imageDir + dirName;
    File file = new File(targetName);
    if (!file.exists()) {
      file.mkdirs();
    }
    try {
      QQ_img.transferTo(new File(targetName, newQQName));
      wechat_img.transferTo(new File(targetName, newWeChatName));
      img_file.transferTo(new File(targetName, newImgName));

    } catch (IOException e) {
      e.printStackTrace();
    }

    speaker.setQQ(imageURL + dirName + "/" + newQQName);
    speaker.setWechat(imageURL + dirName + "/" + newWeChatName);
    speaker.setImgUrl(imageURL + dirName + "/" + newImgName);

    speakerService.saveOrUpdate(speaker);
    return "redirect:/speaker/list";
  }

  @RequestMapping("/delete")
  public String delete(int id) {
    speakerService.deleteById(id);
    return "redirect:/speaker/list";
  }
}
