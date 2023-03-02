<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String no = request.getParameter("no");
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
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
		<h2>게시판</h2>
		<br>
		<table class="table">
			<tr>
				<td>No</td>
				<td><%= no %></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><%= title %></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><%= writer %></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><%= content %></td>
			</tr>
		</table>
		<a href="bbs.html">앞 페이지로 이동</a>
	</div>
</body>
</html>