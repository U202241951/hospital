package com.ustb.hospital.servlet;

import com.github.pagehelper.PageInfo;
import com.ustb.hospital.entity.Departments;
import com.ustb.hospital.service.DepartmentsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet ("/list")
public class DepartmentsServlet extends HttpServlet  {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pageNum= req.getParameter("pageNum");
        int i=1;
        if(pageNum!=null&&!pageNum.equals("") ){
            i=Integer .parseInt(pageNum ) ;
        };
        DepartmentsServiceImpl service=new DepartmentsServiceImpl();
        PageInfo pageInfo = service.queryAll(i,5);
        req.setAttribute("pageInfo",pageInfo);
        req.getRequestDispatcher("/dept/list.jsp").forward(req,resp);
    }
}
