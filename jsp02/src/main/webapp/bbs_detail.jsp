<%@page import="java.util.ArrayList"%>
<%@page import="dbconnect.BbsVO"%>
<%@page import="dbconnect.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");

	BbsDAO dao = new BbsDAO();
	BbsVO vo = dao.one(id);
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
		<table class="table">
			<tr>
				<td>No</td>
				<td><%= vo.getId() %></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><%= vo.getTitle() %></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><%= vo.getWriter() %></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><%= vo.getContent() %></td>
			</tr>
		</table>
		<a href="bbs_update.jsp?id=<%= vo.getId()%>&writer=<%= vo.getWriter()%>"><button class="btn btn-outline-dark">수정하기</button></a>
		<a href="bbs_delete.jsp?id=<%= vo.getId()%>"><button class="btn btn-outline-dark">삭제하기</button></a>
		<a href="bbs.jsp"><button class="btn btn-outline-dark" style="float: right;">목록으로</button></a>
	</div>
</body>
</html>