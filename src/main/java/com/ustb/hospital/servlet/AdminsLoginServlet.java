package com.ustb.hospital.servlet;

import com.ustb.hospital.entity.Admins;
import com.ustb.hospital.entity.Departments;
import com.ustb.hospital.service.AdminServiceimpl;
import com.ustb.hospital.service.AdminServiceimpl;
import com.ustb.hospital.service.DepartmentsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/login")
public class AdminsLoginServlet extends HttpServlet  {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username= req.getParameter("username");
        String password= req.getParameter("password");
        AdminServiceimpl adminsService=new AdminServiceimpl() ;
        Admins admins=adminsService .queryByUsername(username);
        //3.页面导航
        if(admins == null){
            System.out.println("账号不存在");
            //3.2 登录失败：回到登录页面
            //@1转发
            req.getRequestDispatcher("/login.jsp").forward(req,resp);
        }else{
            if(!admins.getPassword().equals(password)){
                System.out.println("密码错误");
                //3.2 登录失败：回到登录页面
                req.getRequestDispatcher("/login.jsp").forward(req,resp);
            }else{
                System.out.println("登录成功");
                //3.1 登录成功：跳转到科室列表
                //@2 重定向
                //转发和重定向的区别
                //转发服务器内部的请求，一次请求
                //重定向由浏览器重新发起一个请求，两次请求
                resp.sendRedirect("/list");
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
