<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	관리자님 환영합니다. <br>
	이 화면은 관리자를 위한 화면입니다. <br>
	전달된 파라미터 : <span style="color: blue;">
	<%= request.getParameter("message") %> </span>
</body>
</html>