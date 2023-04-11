<%@page import="java.util.Calendar"%>
<%@page import="java.util.GregorianCalendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>선언문 태그 학습</h2>
	<hr>
	<%!
	char getKorDay() {
		char result = ' ';
		int day = new GregorianCalendar().get(Calendar.DAY_OF_WEEK);
		switch(day) {
			case 1: result = '일'; break;
			case 2: result = '월'; break;
			case 3: result = '화'; break;
			case 4: result = '수'; break;
			case 5: result = '목'; break;
			case 6: result = '금'; break;
			case 7: result = '토'; break;
		}
		return result;
	}
	%>
	<h2>오늘은 <%= getKorDay() %>요일입니다.</h2>
	<h3>오늘은 <%= getKorDay() %>요일입니다.</h3>
	<h4>오늘은 <%= getKorDay() %>요일입니다.</h4>
</body>
</html>