package com.sist.model;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.UserDAO;
import com.sist.dao.UserDTO;

@Controller("joinController")
public class JoinController {
	// �̸��� �ߺ�Ȯ�� �޼ҵ�
	@RequestMapping("emailCheckOK.do")
	public String emailCehckOK(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("UTF-8");
		String email = req.getParameter("email");
		int result = UserDAO.confirmEmail(email);
		res.getWriter().write(String.valueOf(result));
		return "ajax";

	}
	
	// ȸ������ �޼ҵ�
	@RequestMapping("joinOK.do")
	public String joinOK(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("UTF-8");
		String email = req.getParameter("email");
		String pwd = req.getParameter("pwd");
		String nickname = req.getParameter("nickname");

		UserDTO d = new UserDTO();

		// ȸ������ ������ �ѱ��
		d.setEmail(email);
		d.setPwd(pwd);
		d.setNickname(nickname);

		// DB�����ؼ� insertUser �����Ű��
		UserDAO.insertUser(d);

		return "ajax";
	}
}
