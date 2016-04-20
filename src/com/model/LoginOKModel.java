package com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDAO;

public class LoginOKModel implements Model {

   @Override
   public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
      // TODO Auto-generated method stub
      String email=req.getParameter("logEmail");
       String pwd=req.getParameter("logPwd");
       String LogCheck="";
       int result = UserDAO.emailCheck(email);
       String dbPwd = UserDAO.pwdCheck(email);
       if(result==0){
          LogCheck="noemail";
       }
       else{
          if(dbPwd.equals(pwd)){
             LogCheck="ok";
             //�α��� ������ �α����� �������� ������.
             req.setAttribute("logEmailOK", email);
          }else{
             LogCheck="nopwd";
          }
       }
       
      //�α��� �� �α��� ������ ������
       res.getWriter().write(String.valueOf(LogCheck));
      return null;
   }

}