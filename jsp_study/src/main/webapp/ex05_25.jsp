<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	if(request.getMethod().equals("GET")) {
	%>
		<h2>요청 폼</h2>
		<hr>
		<form method="post" action="/jsp_study/ex05_25.jsp">
			예약자명 : <input type="text" name="bookerName"> <br>
			예약컬러 : <input type="color" name="bookerColor"> <br>
			예약일시 : <input type="datetime-local" name="bookerDateTime"> <br>
			<input type="submit" value="예약완료">
		</form>
	<%
	} else {
		request.setCharacterEncoding("utf-8");
	%>
		<h2>setProperty 액션 태그 예제</h2>
		<hr>
		<jsp:useBean id="booker" class="jspbean.BookerInfo"/>
		<jsp:setProperty property="bookerName" name="booker" value='<%= request.getParameter("bookerName") %>'/>
		<jsp:setProperty property="bookerColor" name="booker" value='<%= request.getParameter("bookerColor") %>'/>
		<jsp:setProperty property="bookerDateTime" name="booker" value='<%= request.getParameter("bookerDateTime") %>'/>
		
		예약자명 : <jsp:getProperty property="bookerName" name="booker"/> <br>
		예약컬러 : <jsp:getProperty property="bookerColor" name="booker"/> <br>
		예약일시 : <jsp:getProperty property="bookerDateTime" name="booker"/> <br>
	<%
	}
	%>
</body>
</html>