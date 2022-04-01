<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>sessionLoginForm.jsp</h1>
	<!-- 
	1) 사용자의 ID/PW 정보를 입력받기
	2) sessionLoginPro.jsp 페이지로 전달
	3) 전달받은 ID/PW 정보를 사용하여 로그인 처리로직 확인
	4) 계정정보 "admin"/"1234"
 	-->
 	<fieldset>
	 	<legend>로그인</legend>
	 	<form action="sessionLoginPro.jsp" method="post" >
	 		ID : <input type="text" name="id"><br>
	 		비밀번호 : <input type="password" name="pw"><br> 
	 	
	 		<input type="submit" value="로그인">
	 	</form>
	 	
	 <%
	 %>
 	</fieldset>
</body>
</html>