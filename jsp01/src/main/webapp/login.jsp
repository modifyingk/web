<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("user_id");
	String pw = request.getParameter("user_pw");
	
	String dbid = "root";
	String dbpw = "1234";
	
	String result = "";
	
	if(id.equals(dbid) && pw.equals(dbpw)){
		result = "로그인 성공!";
	} else{
		result = "로그인 실패!";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<br>
		<h2><%= result %></h2>
	</div>
</body>
</html>