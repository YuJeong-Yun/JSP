<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>index.jsp</h1>
	
	<%
		System.out.println("프로젝트의 시작!");
	
		response.sendRedirect("./member/main.jsp");
	%>
</body>
</html>