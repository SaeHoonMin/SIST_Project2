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
	@RequestMapping("emailCheckOK.do")
	public String emailCehckOK(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("UTF-8");
		String email = req.getParameter("email");
		int result = UserDAO.confirmEmail(email);
		res.getWriter().write(String.valueOf(result));
		return "ajax";
	}
	@RequestMapping("emailSaveOK.do")
	public String emailSaveOK(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String email=req.getParameter("logEmail");
		String logSave=req.getParameter("logSave");
		String emailSave="";
		try {
			if (logSave.equals("1")) {
					Cookie logEmailCookie = new Cookie("logEmail_Cookie", email);
					// ��Ű�� �����Ѵ�. �̸�:testCookie, �� : Hello Cookie
					logEmailCookie.setMaxAge(365 * 24 * 60 * 60);
					// ��Ű�� ��ȿ�Ⱓ�� 365�Ϸ� �����Ѵ�.
					logEmailCookie.setPath("/");
					// ��Ű�� ��ȿ�� ���丮�� "/" �� �����Ѵ�.
					res.addCookie(logEmailCookie);
					// Ŭ���̾�Ʈ ���信 ��Ű�� �߰��Ѵ�.
					
					Cookie[] cookies = req.getCookies();            // ��û�����κ��� ��Ű�� �����´�.
					System.out.println("���� ������ ��Ű�� ���� : " + cookies.length);    // ��Ű�� ����� �迭�� ���̸� �����´�.
					for(int i = 0 ; i<cookies.length; i++){                            // ��Ű �迭�� �ݺ������� ������.
					System.out.println(i + "��° ��Ű �̸� : " + cookies[i].getName());            // ��Ű�� �̸��� �����´�.
					System.out.println(i + "��° ��Ű�� ������ �� : " + cookies[i].getValue());    // ��Ű�� ���� �����´�.
				}
			} else{
					Cookie logEmailCookie = new Cookie("logEmail_Cookie", "");
					// ��Ű�� �����Ѵ�. �̸�:testCookie, �� : Hello Cookie
					logEmailCookie.setMaxAge(365 * 24 * 60 * 60);
					// ��Ű�� ��ȿ�Ⱓ�� 365�Ϸ� �����Ѵ�.
					logEmailCookie.setPath("/");
					// ��Ű�� ��ȿ�� ���丮�� "/" �� �����Ѵ�.
					res.addCookie(logEmailCookie);
					// Ŭ���̾�Ʈ ���信 ��Ű�� �߰��Ѵ�.
					
					Cookie[] cookies = req.getCookies();            // ��û�����κ��� ��Ű�� �����´�.
					System.out.println("���� ������ ��Ű�� ���� : " + cookies.length);    // ��Ű�� ����� �迭�� ���̸� �����´�.
					for(int i = 0 ; i<cookies.length; i++){                            // ��Ű �迭�� �ݺ������� ������.
					System.out.println(i + "��° ��Ű �̸� : " + cookies[i].getName());            // ��Ű�� �̸��� �����´�.
					System.out.println(i + "��° ��Ű�� ������ �� : " + cookies[i].getValue());    // ��Ű�� ���� �����´�.
				}
			}
		} catch (Exception e) {
			System.out.println("catch"+e.getMessage());
		}
		Cookie[] cookies = req.getCookies();
	    emailSave=cookies[1].getValue();
	    res.getWriter().write(String.valueOf(emailSave));
		return "ajax";
	}
	@RequestMapping("emailSaveGet.do")
	public String emailSaveGet(HttpServletRequest req, HttpServletResponse res) throws Exception {
		Cookie[] cookies = req.getCookies();
	    String emailSave=cookies[1].getValue();
	    res.getWriter().write(String.valueOf(emailSave));
		return "ajax";
	}
	@RequestMapping("joinOK.do")
	public String joinOK(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("UTF-8");
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
		
		return "ajax";
	}
}
