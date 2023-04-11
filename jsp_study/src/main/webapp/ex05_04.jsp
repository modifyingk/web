<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="hello" class="jspbean.TestBean"></jsp:useBean>
	<jsp:setProperty property="name" name="hello" param="name"/>
	<h3>Hello <jsp:getProperty name="hello" property="name"/>!
	방문 시간은 <jsp:getProperty property="time" name="hello"/>입니다.
	</h3>
</body>
</html>