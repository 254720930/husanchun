package com.xcy.project.service.impl;

import com.xcy.project.mapper.BokeMapper;
import com.xcy.project.pojo.Boke;
import com.xcy.project.service.BokeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Auther: http://www/qfedu.com
 * @Date: 2019/7/10
 * @Description:
 * @version: 1.0
 */
@Service
public class BokeServiceImpl implements BokeService {

    @Autowired
    BokeMapper bokeMapper;

    public List<Boke> selectAllBokeForBefore() {
        return bokeMapper.selectAllBokeForBefore();
    }

    public Boke selectBokeById(int id) {
        return bokeMapper.selectBokeById(id);
    }

    public void saveBoke(Boke boke) {
        bokeMapper.saveBoke(boke);
    }

    public void updateBokeById(Boke boke) {
        bokeMapper.updateBokeById(boke);
    }
}
