<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>InsertForm.jsp</h1>
	<h2>회원가입 페이지</h2>
	<!-- 폼태그를 사용해서 (id, pw, name, age, gender, email) 입력 받기
		 insertPro.jsp 페이지로 정보 전달
	 -->
	
	<fieldset>
		<form action="insertPro.jsp" method="post">
			아이디 : <input type="text" name="id"><br>
			비밀번호 : <input type="password" name="pw"><br>
			이름 : <input type="text" name="name"><br>
			나이 : <input type="text" name="age"><br>
			성별 :	<input type="radio" name="gender" value="남"> 남
					<input type="radio" name="gender" value="여"> 여<br>
			이메일 : <input type="text" name="email"><br>
			
			<br>
			<input type="submit" value="회원가입">
		</form>
	</fieldset>
		
		
		
	
	
	

</body>
</html>