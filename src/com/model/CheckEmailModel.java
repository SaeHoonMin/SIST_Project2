package com.model;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import com.dao.UserDAO;

public class CheckEmailModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("EUC-KR");
		String email = req.getParameter("email");
		System.out.println(email);
		int result = UserDAO.confirmEmail(email);
		res.getWriter().write(String.valueOf(result));
		return null;
	}
}
