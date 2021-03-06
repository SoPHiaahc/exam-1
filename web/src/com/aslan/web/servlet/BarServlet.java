package com.aslan.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aslan.user.domain.Bar;
import com.aslan.user.dao.BarDao;

import net.sf.json.JSONArray;

public class BarServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String username = "'sob'";
        // 创建DAO
        BarDao barDao = new BarDao();
        // 从数据库里取数据
        ArrayList<Bar> barArr = barDao.query(username);
        // 设置服务器相应时向JSP传输数据的编码格式
        resp.setContentType("text/html; charset=utf-8");
        // ArrayList对象转化为JSON对象
        JSONArray json = JSONArray.fromObject(barArr);
        // 控制台显示Json
        System.out.println(json.toString());
        // 返回到JSP
        PrintWriter writer = resp.getWriter();
        writer.println(json);
        writer.flush();
        // 关闭输出流
        writer.close();
    }
}
