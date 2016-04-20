package com.model;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDAO;

public class LoginOKModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		String email=req.getParameter("logEmail");
	    String pwd=req.getParameter("logPwd");
	    String logSave=req.getParameter("logSave");
	    String chk="";
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
			} 
		} catch (Exception e) {
			System.out.println(e.getMessage());
			Cookie logEmailCookie = new Cookie("logEmail_Cookie", "");
			// ��Ű�� �����Ѵ�. �̸�:testCookie, �� : Hello Cookie
			logEmailCookie.setMaxAge(365 * 24 * 60 * 60);
			// ��Ű�� ��ȿ�Ⱓ�� 365�Ϸ� �����Ѵ�.
			logEmailCookie.setPath("/");
			// ��Ű�� ��ȿ�� ���丮�� "/" �� �����Ѵ�.
			res.addCookie(logEmailCookie);
			// Ŭ���̾�Ʈ ���信 ��Ű�� �߰��Ѵ�.
		}
	    System.out.println(email);
	    int result = UserDAO.emailCheck(email);
	    String dbPwd = UserDAO.pwdCheck(email);
	    if(result==0){
	    	chk="noemail";
	    }
	    else{
	    	if(dbPwd.equals(pwd)){
	    		chk="ok";
	    		
	    		return "onm.jsp";
	    	}else{
	    		chk="nopwd";
	    	}
	    }
	    req.setAttribute("check", chk);
		return "intro.jsp";
	}

}
