package com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDAO;
import com.dao.UserDTO;

public class JoinOKModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		String email = req.getParameter("email");
		String pwd = req.getParameter("pwd");
		String nickname = req.getParameter("nickname");	
		UserDTO d = new UserDTO();
				
		//ȸ������ ������ �ѱ��
		d.setEmail(email);
		d.setPwd(pwd);
		d.setNickname(nickname);	
		// DB�����ؼ� insertUser �����Ű�� 
		UserDAO.insertUser(d);
		
		return null;
	}

}
