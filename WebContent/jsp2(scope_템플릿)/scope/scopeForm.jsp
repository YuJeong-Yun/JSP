<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>scopeForm.jsp</h1>
	<%
		// 영역				영역객체			속성 유효범위
		// page				pageContext			해당 페이지
		// request			request				클라이언트 요청이 처리되는 페이지
		// session			session				세션 정보가 유지되는 동안 모든 페이지
		// application		application			서버(톰캣)가 실행되는 동안 모든 페이지
		
		// *아래로 갈수록 페이지 범위가 넓어짐
		
	
		// 영역에 정보를 저장
		// [영역객체].setAttribute("이름", 값);
	

	%>

	<form action="scopePro.jsp" method="get">
		아이디 : <input type="text" name="id"><br>
		<input type="submit" value="전송">	
	</form>	
	
</body>
</html>