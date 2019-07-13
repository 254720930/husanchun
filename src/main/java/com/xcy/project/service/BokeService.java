package com.xcy.project.service;

import com.xcy.project.pojo.Boke;

import java.util.List;

/**
 * @Auther: http://www/qfedu.com
 * @Date: 2019/7/10
 * @Description:
 * @version: 1.0
 */
public interface BokeService {
    List<Boke> selectAllBokeForBefore();

    Boke selectBokeById(int id);

    void saveBoke(Boke boke);

    void updateBokeById(Boke boke);
}
