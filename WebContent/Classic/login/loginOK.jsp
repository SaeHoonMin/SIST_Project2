<%@page import="javafx.scene.control.Alert"%>
<%@page import="com.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    String email=request.getParameter("logEmail");
    String pwd=request.getParameter("logPwd");
    UserDAO dao=UserDAO.newInstance();
    String result=dao.isLogin(email, pwd);
    if(result.equals("NOID")) {
%>
        <script>
        alert("ID�� �������� �ʽ��ϴ�");
        history.back();
        </script>
<%
    } else if(result.equals("NOPWD")) {
%>
        <script>
        alert("��й�ȣ�� Ʋ���ϴ�");
        history.back();
        </script>
<%    	
    } else {
    	session.setAttribute("email", email);
        session.setAttribute("pwd", pwd);
        response.sendRedirect("../login.jsp");
    }
%>