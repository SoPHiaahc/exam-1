package com.aslan.web.servlet;

import java.AStar;
import java.AstarTest;
import java.MapInfo;
import java.Node;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aslan.comm.CommonUtils;
import com.aslan.user.domain.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import com.aslan.user.service.UserService;

/**
 * Servlet implementation class CheckServlet
 */
@WebServlet("/LocationServlet")
public class LocationServelet extends HttpServlet {

    private static final long serialVersionUID = 1L;






    /**
     * 打印地图
     */

    /*public  void setBeginX(int beginX){
        this.beginX=beginX;
    }
    public int getBeginX(){
        return beginX;
    }*/



    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        int begin=Integer.valueOf(request.getParameter("start"));
        int end=Integer.valueOf(request.getParameter("end"));
        AstarTest ast=new AstarTest();

        ast.getpoint(begin,end);









        try {





        } catch (Exception e) {
            // TODO: handle exception
            //��¼ʧ�ܣ���ȡ�쳣��Ϣ
            request.setAttribute("msg", e.getMessage());



            //��¼�ɹ���ת��welcome.jsp
            request.getRequestDispatcher("/WebContent/another/index.jsp").forward(request, response);
        }


    }

}
