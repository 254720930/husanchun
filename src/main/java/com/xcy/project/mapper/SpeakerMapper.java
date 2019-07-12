package com.xcy.project.mapper;

import com.xcy.project.pojo.Speaker;

import java.util.List;

public interface SpeakerMapper {
  List<Speaker> selectAllSpeaker(Speaker speaker);

  Speaker selectSpeakerById(int id);

  void insertSpeaker(Speaker speaker);

  void updateSpeaker(Speaker speaker);

  void deleteById(int id);

  List<Speaker> selectAllSpeakerForBefore();
}
