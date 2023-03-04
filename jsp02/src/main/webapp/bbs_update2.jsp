<%@page import="dbconnect.BbsVO"%>
<%@page import="dbconnect.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	
	BbsVO vo = new BbsVO();
	vo.setId(id);
	vo.setTitle(title);
	vo.setWriter(writer);
	vo.setContent(content);
	
	BbsDAO dao = new BbsDAO();
	int result = dao.update(vo);
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
		<%
		if(result != 0){
		%>
		<h2>게시글 수정 완료!</h2>
		<%
		} else{
		%>
		<h2>게시글 수정 실패</h2>
		<%	
		}
		%>
		<hr>
		<a href="bbs.jsp"><button class="btn btn-outline-dark">목록으로</button></a>
	</div>
</body>
</html>