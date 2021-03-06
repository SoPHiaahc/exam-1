package com.aslan.user.dao;

import java.sql.*;
import java.util.ArrayList;

import com.aslan.user.domain.Bar;

public class BarDao {
    public ArrayList<Bar> query(String username) {
        ArrayList<Bar> barArr = new ArrayList<Bar>();
        try {
            // 连接数据库
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/database", "root", "root");
            System.out.println("连接数据库成功");
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM studentsgrade WHERE username="+username);
            ResultSet rs = stmt.executeQuery();
            System.out.println("查询成功");
            // 将数据存储到线性表中
            while (rs.next()) {
                Bar bar = new Bar();
                bar.setUsername(rs.getString("username"));
                bar.setTest(rs.getString("test"));
                bar.setGrade(rs.getInt("grade"));
                barArr.add(bar);
            }
            // 关闭连接
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return barArr;
    }
}
