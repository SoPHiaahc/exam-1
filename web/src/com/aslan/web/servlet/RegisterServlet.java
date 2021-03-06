package com.aslan.web.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.jws.soap.SOAPBinding.Use;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aslan.comm.CommonUtils;
import com.aslan.user.domain.User;
import com.aslan.user.service.UserException;
import com.aslan.user.service.UserService;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
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
		
		request.setCharacterEncoding("utf-8"); //???????
		response.setContentType("text/html;charset=utf-8"); //???????
		
		//????UserService
		UserService service = new UserService();
		
//		String username = request.getParameter("username");
//		Map<String, String> map = new HashMap<String, String>();
//		
//		map.put("username",request.getParameter("username"));
//		map.put("password",request.getParameter("password"));
//		
//		User user = CommonUtils.toBean(map, User.class);
		
		/*
		 * 1.???????????????User???????  
		 * ??????????????????
		 * */
		User user = CommonUtils.toBean(request.getParameterMap(), User.class);
		
		/*
		 * ?????
		 * */
		Map<String, String> errors = new HashMap<>();

		/*
		 * ????????
		 * */
		String verifyCode = user.getVerifyCode();
		String sessionVerifycode = (String)request.getSession().getAttribute("session_verifycode");
		System.out.println(verifyCode);
		if ((verifyCode == null) || verifyCode.trim().isEmpty()|| (verifyCode.length() !=4)) {
			System.out.println(verifyCode);
			errors.put("verifycode", "验证码长度必须为4");
		}
		else if(sessionVerifycode.equals(verifyCode) == false){
			errors.put("verifycode", "验证码错误");
		}
		
		
		/*
		 * ????????????
		 * */
		String username = user.getUsername();
		String password = user.getPassword();
		if(username == null || username.trim().isEmpty()) 
		{
			errors.put("username", "用户名长度3~15之间");
		}
		if(password == null || password.trim().isEmpty()) {
			errors.put("password", "密码长度必须在3~15之间");
		}
		
		if(errors != null && errors.size() > 0)
		{
			request.setAttribute("errors", errors);
			request.setAttribute("user", user);
			request.getRequestDispatcher("/WebContent/user/register.jsp").forward(request, response);
			return;
		}
		
		try {
			
			/*2.????userService??regist()??????????form???
			 * 3.?????????????????????request???????request.jsp??
			 * 4.?????????????????
			 * */
			service.regist(user);
			
		
			response.getWriter().print("<h1>注册成功</h1> <a href='"+
					request.getContextPath() + "/WebContent/user/login.jsp"+"'> 点击这里登录</a> ");
			
		} catch (UserException e) {
			
			System.out.println("注册失败");
			
			//??????????
			request.setAttribute("msg",e.getMessage());
			request.setAttribute("user", user);
			//?????register.jsp
			request.getRequestDispatcher("/WebContent/user/register.jsp").forward(request, response);
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

}
