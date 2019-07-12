package com.xcy.project.mapper;

import com.xcy.project.pojo.Boke;

import java.util.List;

/**
 * @Auther: http://www/qfedu.com
 * @Date: 2019/7/10
 * @Description:
 * @version: 1.0
 */
public interface BokeMapper {

    List<Boke> selectAllBokeForBefore();

    Boke selectBokeById(int id);
}
