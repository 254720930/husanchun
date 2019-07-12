package com.xcy.project.service.impl;

import com.xcy.project.mapper.SpeakerMapper;
import com.xcy.project.pojo.Speaker;
import com.xcy.project.service.SpeakerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SpeakerServiceImpl implements SpeakerService {
  @Autowired SpeakerMapper speakerMapper;

  public List<Speaker> selectAllSpeaker(Speaker speaker) {

    return speakerMapper.selectAllSpeaker(speaker);
  }

  public Speaker selectSpeakerById(int id) {
    return speakerMapper.selectSpeakerById(id);
  }

  /*public void saveOrUpdate(Speaker speaker) {
    if (speaker.getId() != 0) {
      speakerMapper.updateSpeaker(speaker);
    } else {
      speakerMapper.insertSpeaker(speaker);
    }
  }*/

  public void saveOrUpdate(Speaker speaker) {

    if (speaker.getId() != 0) {
      speakerMapper.updateSpeaker(speaker);
    } else {
      speakerMapper.insertSpeaker(speaker);
    }
  }

  public void deleteById(int id) {
    speakerMapper.deleteById(id);
  }

  public List<Speaker> selectAllSpeakerForBefore() {
    return speakerMapper.selectAllSpeakerForBefore();
  }
}
