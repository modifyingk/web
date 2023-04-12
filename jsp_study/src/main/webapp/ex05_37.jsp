<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>&lt;c:catch&gt; 태그 예제</h2>
	<hr>
	<c:catch var="ex">
		name 파라미터의 값 = <%= request.getParameter("name") %> <br>
		<% if(request.getParameter("name").equals("test")) { %>
				<h3>name은 test입니다.</h3>
		<%} %>
	</c:catch>
	
	<c:if test="${ !empty ex }">
		<h3>예외가 발생하였습니다 : </h3>
		<p style="color: red">${ ex }</p>
	</c:if>
</body>
</html>