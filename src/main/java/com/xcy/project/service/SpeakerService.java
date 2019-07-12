package com.xcy.project.service;

import com.xcy.project.pojo.Speaker;

import java.util.List;

public interface SpeakerService {
  List<Speaker> selectAllSpeaker(Speaker speaker);

  Speaker selectSpeakerById(int id);

  // void saveOrUpdate(Speaker speaker);

  void saveOrUpdate(Speaker speaker);

  void deleteById(int id);

  List<Speaker> selectAllSpeakerForBefore();
}
