package com.model;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EmailSaveOKModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String email=req.getParameter("logEmail");
		String logSave=req.getParameter("logSave");
		String emailSave="";
		System.out.println("email:"+email);
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
	    
		return null;
	}

}
