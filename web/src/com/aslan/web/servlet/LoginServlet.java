package com.aslan.web.servlet;

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
import com.aslan.user.service.UserService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
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
		UserService service  = new UserService();
		
		//1.��ȡ����Ϣ����װ��user
		User user = CommonUtils.toBean(request.getParameterMap(), User.class);
		
		
		try {
			User _user = service.login(user);
			
			request.setAttribute("user", _user);
			request.getSession().setAttribute("sessionuser", user);
			Cookie cookieName=new Cookie("acceptLoginNAme",user.getUsername());
			Cookie cookiePass=new Cookie("acceptLoginPass",user.getPassword());
			response.addCookie(cookiePass);
			response.addCookie(cookieName);
			//û���쳣����¼�ɹ���ת��welcome.jsp,��ʾ��ǰ�û���Ϣ
			response.sendRedirect(request.getContextPath()+"/WebContent/user/Welcome2.jsp");
			
		} catch (Exception e) {
			// TODO: handle exception
			//��¼ʧ�ܣ���ȡ�쳣��Ϣ
			request.setAttribute("msg", e.getMessage());
			
			request.setAttribute("user", user);
			
			//��¼�ɹ���ת��welcome.jsp
			request.getRequestDispatcher("/WebContent/user/login.jsp").forward(request, response);
		}
		
		
	}

}
