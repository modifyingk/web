<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String membername = (String)session.getAttribute("member_id");
	if(membername != null) {
		session.removeAttribute("member_id");
		session.removeAttribute("member_passwd");
	%>
		<script>
			alert("성공적으로 로그아웃했습니다!!");
		</script>
	<%
	} else {
	%>
		<script>
			alert("로그인 상태가 아닙니다!!");
		</script>
	<% } %>
	<h2>로그인</h2> <hr>
	<form method="post" action="/jsp_study/ex05_19.jsp">
		<input placeholder="계정을 입력하세요" name="membername" required> <br>
		<input placeholder="암호를 입력하세요" name="memberpassword" required> <br>
		<input type="submit" value="로그인">
	</form>
</body>
</html>