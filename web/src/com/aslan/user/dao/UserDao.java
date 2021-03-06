package com.aslan.user.dao;

import java.io.File;
import java.sql.*;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.OutputStreamWriter;
import java.nio.file.Path;

import javax.management.RuntimeErrorException;

import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

import com.aslan.user.domain.User;

public class UserDao {
	private String path = "/Users/liuyicong/Documents/exam-1/user.xml"; //���������ļ�
    private PreparedStatement pstm;

	/*
	 * ���û�����ѯ
	 * 1.�õ�Document
	 * 2.xpath��ѯ
	 * 3.��鷵�ؽ���������null ����null
	 * 4.�����Ϊnull����Ҫ��Element��װ��User������
	 * */
	public User findByUsername(String username,String password) throws ClassNotFoundException {


        SAXReader reader = new SAXReader();

        try {

            Connection con = null;

           Statement stmt=null;
            ResultSet rs=null;


            String url = "jdbc:mysql://localhost:3306/database";
            String db = "database";
            String driver = "com.mysql.jdbc.Driver";
            String user1 = "root";
            String pass = "root";


            Class.forName(driver);
            con = DriverManager.getConnection(url, user1, pass);
            con.setAutoCommit(true);// Disables auto-commit.
			stmt=con.createStatement();

            String sql="select * from students where username = '"+username+"' and password = '"+password+"'";

            rs=stmt.executeQuery(sql);


           if(rs.next()){ User user = new User();
               user.setUsername(rs.getString("username"));
               user.setPassword(rs.getString("password"));
               return user;



            }
            //4.��ele�����ݷ�װ��User������





            con.close();


        }
        catch (SQLException e) {
            e.printStackTrace();
        }


        //����������
//		try {
//
//
//
//
//
//
//
//
//
//
//            Document doc = reader.read(path);
//
//			//2.ͨ��xpath��ѯ�õ�Element
//			Element ele = (Element)doc.selectSingleNode("//user[@username='"+ username+"']");
//
//			//3.У��ele�Ƿ�Ϊnull �����null������null
//			if (ele == null) {
//				return null;
//			}
//
//			//4.��ele�����ݷ�װ��User������
//			User user = new User();
//			String attrusername =  ele.attributeValue("username"); //��ȡ��Ԫ�ص���Ϊusername������ֵ
//			String attrpassword = ele.attributeValue("password");//��ȡ��Ԫ����Ϊpassword������ֵ
//			user.setUsername(attrusername);
//			user.setPassword(attrpassword);
//
//			return user;
//
//
//		} catch (Exception e) {
//			throw new RuntimeException(e);
//		}


        return null;
    }
	
	
	/*
	 * ����û�
	 * 
	 * 1.�õ�Document
	 * 2.ͨ��Document �õ�rootԪ��
	 * 3.�Ѳ���userת����Element����
	 * 4.��element��ӵ�rootԪ����
	 * 5.����Document
	 * */
	public void add(User user) {
		Connection con = null;
		PreparedStatement pst = null;

		String url = "jdbc:mysql://localhost:3306/database";
		String db = "database";
		String driver = "com.mysql.jdbc.Driver";
		String user1 = "root";
		String pass = "root";
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user1, pass);
			con.setAutoCommit(true);// Disables auto-commit.

			String sql = "insert into students values(?,?); ";
			pst = con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			String a=user.getUsername();
			String b=user.getPassword();

			pst.setString(1, a);
			pst.setString(2, b);
			pst.executeUpdate();
			pst.close();
			con.close();
		}
		catch (Exception e) {
			System.out.println(e);
		}
		SAXReader reader = new SAXReader();

		//����������
		try {
			//1.�õ�Document
			Document doc = reader.read(new File(path));

			System.out.println("b:"+doc.getRootElement().toString());
			//2.�õ���Ԫ��
			Element root = doc.getRootElement();

			//3.ͨ����Ԫ�أ�������Ԫ��
			Element useEle = root.addElement("user");

			//4.ΪuseEle��������
			useEle.addAttribute("username",user.getUsername());
			useEle.addAttribute("password", user.getPassword());

			System.out.println("b:"+useEle.toString());



			//5.�����ĵ�

			/*
			 * ����һ����ʽ����
			 * ����1������ʹ��\t
			 * ����2���Ƿ����� true/false
			 * */
			OutputFormat format = new OutputFormat("\t",true);

			//���ԭ�еĻ��к�����
			format.setTrimText(true);

			//����xmlWriter---�ַ����������Ҫ
			XMLWriter writer = new XMLWriter(
					new OutputStreamWriter(
							new FileOutputStream(path), "utf-8"),format);
			//����Document
			writer.write(doc);

			//�ر�writer
			writer.close();




		} catch (Exception e) {
			throw new RuntimeException(e);
		}

	}

}
