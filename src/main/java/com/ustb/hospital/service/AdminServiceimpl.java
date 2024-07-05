package com.ustb.hospital.service;

import com.ustb.hospital.entity.Admins;
import com.ustb.hospital.mapper.AdminsMapper;

import com.ustb.hospital.utils.MybatisUtil;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class AdminServiceimpl {
   public Admins queryByUsername(String username){
       SqlSession sqlSession = MybatisUtil .getSqlSession() ;
       AdminsMapper mapper =sqlSession .getMapper(AdminsMapper .class );
       Admins admins= mapper.selectByUsername(username);
       return admins;
   }
    }



