package com.model;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.dao.*;
public class IntroModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		HttpSession session=req.getSession();
		String email = (String)session.getAttribute("email");	    
	    
	    //���̵� Ȯ���ϱ�
	    //int check= UserDAO.confirmEmail(email);
		req.setAttribute("email", email);
		
		return "intro.jsp";
	}

}
