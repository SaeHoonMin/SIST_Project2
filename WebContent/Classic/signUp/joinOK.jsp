<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.dao.*"%>

<%
	request.setCharacterEncoding("EUC-KR");
	String email = request.getParameter("email");
	String pwd = request.getParameter("pwd");
	UserDTO d = new UserDTO();
	d.setEmail(email);
	d.setPwd(pwd);
	// DB���� 
	UserDAO dao = UserDAO.newInstance();
	dao.insertUser(d);
	// list.jsp�� �̵� (�����̷�Ʈ)
	response.sendRedirect("../index.jsp");
	//ȸ������ ������
%>