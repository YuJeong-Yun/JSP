<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>testPro2.jsp</h1>


	<%
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String[] hobby = request.getParameterValues("hobby");
		int room = Integer.parseInt(request.getParameter("room"));

		out.println("이름 : " + name + "<br>");
		out.println("성별 : " + gender + "<br>");
		out.println("취미 : ");
		// 		for(int i=0;i<hobby.length;i++) {
		// 			out.println(hobby[i]);
		// 		}
		if (hobby != null) {
			for (String s : hobby) {
				out.println(s);
			}
		}
		out.println("<br>");
		out.println("강의장 : " + room + "강의장" + "<br>");
	%>




</body>
</html>