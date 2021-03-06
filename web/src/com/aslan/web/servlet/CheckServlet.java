package com.aslan.web.servlet;

import java.AstarTest;
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
@WebServlet("/CheckServlet")
public class CheckServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

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
        String grade=request.getParameter("grade");
        String text=request.getParameter("text");



        


        try {
            String username = new String();


            //1.��ȡ����Ϣ����װ��user
            response.setContentType("text/hrml");
            boolean bool=false;
            Cookie[] cookies=request.getCookies();
            for(int i=0;i<cookies.length;i++){
                Cookie cookie=cookies[i];
                if("acceptLoginNAme".equals(cookie.getName())){
                    username=cookie.getValue();
                }
            }


         String ans1=request.getParameter("t");
            String goalNum =(String)request.getParameter("goalNum");
            String param1 = request.getParameter("param1");



            Connection con = null;
            PreparedStatement pst = null;

            String url = "jdbc:mysql://localhost:3306/database";
            String db = "database";
            String driver = "com.mysql.jdbc.Driver";
            String user1 = "root";
            String pass = "root";

                Class.forName(driver);
                con = DriverManager.getConnection(url, user1, pass);
                con.setAutoCommit(true);// Disables auto-commit.

                String sql = "INSERT INTO studentsgrade (username, test,grade) VALUES (?, ?,?) ; ";
                pst = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pst.setString(1, username);
            pst.setString(2, String.valueOf(text));


                pst.setString(3, String.valueOf(grade));


                pst.executeUpdate();
                pst.close();
                con.close();



            //û���쳣����¼�ɹ���ת��welcome.jsp,��ʾ��ǰ�û���Ϣ
            response.sendRedirect(request.getContextPath()+"/WebContent/user/Welcome2.jsp");

        } catch (Exception e) {
            // TODO: handle exception
            //��¼ʧ�ܣ���ȡ�쳣��Ϣ
            request.setAttribute("msg", e.getMessage());



            //��¼�ɹ���ת��welcome.jsp
            request.getRequestDispatcher("/WebContent/user/Welcome2.jsp").forward(request, response);
        }


    }

}
