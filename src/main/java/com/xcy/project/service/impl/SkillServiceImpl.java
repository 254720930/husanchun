package com.xcy.project.service.impl;

import com.xcy.project.mapper.SkillMapper;
import com.xcy.project.pojo.Skill;
import com.xcy.project.service.SkillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Auther: http://www/qfedu.com
 * @Date: 2019/7/12
 * @Description:
 * @version: 1.0
 */

@Service
public class SkillServiceImpl implements SkillService {

    @Autowired
    SkillMapper skillMapper;

    public List<Skill> selectAllSkillType() {
        return skillMapper.selectAllSkillType();

    }
}
