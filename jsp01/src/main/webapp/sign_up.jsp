<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("user_id");
	String pw = request.getParameter("user_pw");
	String name = request.getParameter("user_name");
	String tel = request.getParameter("user_tel");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<br>
		<h2>회원가입 정보</h2>
		<br>
		<table class="table">
				<tr>
					<td>아이디</td>
					<td><%= id %></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><%= pw %></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><%= name %></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><%= tel %></td>
				</tr>
			</table>
	</div>
</body>
</html>