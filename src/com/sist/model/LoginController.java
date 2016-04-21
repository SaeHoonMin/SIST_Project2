package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.UserDAO;
import com.sist.dao.UserDTO;

@Controller("loginController")
public class LoginController {
	@RequestMapping("loginOK.do")
	public String loginOK(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HttpSession session=req.getSession();
		String email = req.getParameter("logEmail");
		String pwd = req.getParameter("logPwd");
		String LogCheck = "";
		int result = UserDAO.emailCheck(email);
		UserDTO d = UserDAO.logCheck(email);
		if (result == 0) {
			LogCheck = "noemail";
		} else {
			if (d.getPwd().equals(pwd)) {
				LogCheck = "ok";
				// �α��� ������ �α����� �������� ������.
				session.setAttribute("logEmailOK", d.getEmail());
				session.setAttribute("logNicknameOK", d.getNickname());
				session.setAttribute("logUsernoOK", d.getNo());
			} else {
				LogCheck = "nopwd";
			}
		}
	       
	      //�α��� �� �α��� ������ ������
	       res.getWriter().write(String.valueOf(LogCheck));
	      return "ajax";
	}

}
