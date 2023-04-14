<%@page import="com.multi.mvc00.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	id는 <%= id %> <br>
	pw는 <%= pw %> <br>
	name는 <%= name %> <br>
	tel는 <%= tel %> <br>
</body>
</html>