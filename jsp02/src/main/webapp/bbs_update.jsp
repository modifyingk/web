<%@page import="java.util.ArrayList"%>
<%@page import="dbconnect.BbsVO"%>
<%@page import="dbconnect.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String writer = request.getParameter("writer");
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
		<form action="bbs_update2.jsp">
			<table class="table">
				<tr>
					<td>No</td>
					<td><input type="text" name="id" class="form-control" value="<%= id %>"></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" name="title" class="form-control"></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input type="text" name="writer" class="form-control" value="<%= writer %>"></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea rows="10" cols="100" class="form-control" name="content"></textarea></td>
				</tr>
				<tr>
					<td colspan="2"><button type="submit" class="btn btn-dark">수정하기</button>
				</tr>
			</table>
		</form>
		<a href="bbs.jsp"><button class="btn btn-outline-dark" style="float: right;">목록으로</button></a>
		
	</div>
</body>
</html>