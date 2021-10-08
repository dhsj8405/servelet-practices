<%@page import="com.douzone.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%=request.getContextPath() %>
<%=request.getParameter("no") %>
<%
System.out.print(request.getParameter("no"));

Long no = Long.parseLong(request.getParameter("no"));
String password = request.getParameter("password");
System.out.print(password);
new GuestbookDao().delete(no, password);
//리다이렉트 응답
response.sendRedirect("/guestbook01");
%>