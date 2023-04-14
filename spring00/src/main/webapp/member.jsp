<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>회원가입</h3>
	<form action="insert.multi">
		id : <input name="id"> <br>
		pw : <input name="pw"> <br>
		name : <input name="name"> <br>
		tel : <input name="tel"> <br>
		<button>회원가입</button>
	</form>
	<hr>
	<h3>로그인</h3>
	<form action="login.multi">
		id : <input name="id"> <br>
		pw : <input name="pw"> <br>
		<button>로그인</button>
	</form>
	<hr>
	<h3>회원탈퇴</h3>
	<form action="delete.multi">
		id : <input name="id"> <br>
		<button>회원가입</button>
	</form>
</body>
</html>