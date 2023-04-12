<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>userBean 액션 태그 예제</h2>
	<hr>
	<jsp:useBean id="cnt" class="jspbean.CountVO" scope="session"/>
	<%= cnt.getNumber() %> <br>
	<%  cnt.setNumber(10); %>
	<%= cnt.getNumber() %> <br>
	<%  cnt.setNumber(10); %>
	<%= cnt.getNumber() %>
</body>
</html>