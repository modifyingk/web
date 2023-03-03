<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("user_id");
	String pw = request.getParameter("user_pw");
	String name = request.getParameter("user_name");
	String tel = request.getParameter("user_tel");
	
	Class.forName("com.mysql.jdbc.Driver");
	System.out.println("1. 드라이버 설정 성공");
	
	String url = "jdbc:mysql://localhost:3306/study";
	String user = "root";
	String password = "1234";
	Connection conn = DriverManager.getConnection(url, user, password);
	System.out.println("2. DB 연결 성공");
	
	String sql = "insert into member value (?, ?, ?, ?)";
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.setString(1, id);
	ps.setString(2, pw);
	ps.setString(3, name);
	ps.setString(4, tel);
	System.out.println("3. SQL문 생성 성공");
	
	ps.executeUpdate();
	System.out.println("4. SQL문 전송 성공");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<br>
		<h2>회원가입 완료!</h2>
	</div>
</body>
</html>