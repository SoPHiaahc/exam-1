package com.aslan.user.service;

import com.aslan.user.dao.UserDao;
import com.aslan.user.domain.User;

import javax.servlet.http.Cookie;


/*
 * User ҵ���
 * */
public class UserService {
	
	private UserDao dao =  new UserDao();
	
	/*
	 * ע��
	 * */
	public void  regist(User user) throws UserException, ClassNotFoundException {
		User _user = dao.findByUsername(user.getUsername(),user.getPassword());
		
		if(_user != null) 
			throw new UserException("用户名" + user.getUsername() + ",已被注册");
		else {
			dao.add(user);
		}
		
	}
	
	/*
	 * ��¼
	 * */
	public User login(User user) throws Exception {
		
		//1.ʹ�ñ��е�username��ѯ�õ�User _user
		User _user =  dao.findByUsername(user.getUsername(),user.getPassword());
		System.out.println(_user);

		
		//2.�����null��˵���û�������
		if(_user == null)
			throw new UserException("用户名不存在");
		
		//3.�Ա������Ƿ���ȷ
		if(_user.getPassword().equals(user.getPassword()) == false)
			throw new UserException("密码错误");
		
		return _user;
	}
}

