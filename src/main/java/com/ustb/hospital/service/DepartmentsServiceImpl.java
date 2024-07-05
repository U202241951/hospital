package com.ustb.hospital.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ustb.hospital.entity.Departments;
import com.ustb.hospital.mapper.DepartmentsMapper;
import com.ustb.hospital.utils.MybatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class DepartmentsServiceImpl {
    public PageInfo queryAll(int pageNum,int pageSize)
    {
        SqlSession sqlSession=MybatisUtil.getSqlSession();
        DepartmentsMapper mapper =sqlSession .getMapper(DepartmentsMapper .class );
        PageHelper.startPage(pageNum ,pageSize ) ;

        List <Departments > list =mapper.selectAll() ;
        PageInfo pageInfo =new PageInfo(list) ;
        System.out.println(pageInfo);
        return pageInfo ;
    }

}
