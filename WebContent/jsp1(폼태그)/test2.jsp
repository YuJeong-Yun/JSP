<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>tet2.jsp</h1>
	
	<%
	
	// 파라메터 데이터를 전달받아서 저장
	// request.getParameter("파라미터명");
	
	// 파라메터를 전달할 때 데이터는 항상 String 타입으로 전달됨.
	
	int age = Integer.parseInt(request.getParameter("age"));
	%>
	
	입력값(String) : <%=request.getParameter("age")+100 %><br>
	입력값(int) : <%= age+100 %><br>
	
</body>
</html>