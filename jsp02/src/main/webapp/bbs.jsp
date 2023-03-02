<%@page import="java.util.ArrayList"%>
<%@page import="dbconnect.BbsVO"%>
<%@page import="dbconnect.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BbsDAO dao = new BbsDAO();
	ArrayList<BbsVO> list = dao.list();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<br>
		<h2>게시판</h2> <br>
		<%
		for(BbsVO vo : list){
		%>
			<table class="table">
				<tr>
					<td>No</td>
					<td>제목</td>
					<td>작성자</td>
				</tr>
				<tr>
					<td><%= vo.getId() %></td>
					<td><%= vo.getTitle() %></td>
					<td><%= vo.getWriter() %></td>
				</tr>
			</table>
		<%
		}
		%>
		<a href="bbs_create.html"><button class="btn btn-outline-dark" style="width: 150px;">글 쓰기</button></a>
	</div>
</body>
</html>