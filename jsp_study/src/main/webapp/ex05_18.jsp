<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% if(request.getMethod().equals("GET")) { %>
		<h2>원하는 컬러와 날짜를 선택하세요</h2>
		<form method="post" action="/jsp_study/ex05_18.jsp">
			컬러 : <input type="color" name="fcolor"> <br>
			날자 : <input type="date" name="fdate"> <br>
			<input type="submit" value="전송">
		</form>
	<% } else { %>
		<script>
			document.body.style.backgroundColor = '<%= request.getParameter("fcolor") %>';
		</script>
		<h2>선택 날자는 <%= request.getParameter("fdate") %>이네요</h2>
	<% } %>
</body>
</html>