<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>fWriteForm.jsp</h1> 
	<h1>파일 글쓰기 페이지</h1>
	
	<fieldset>
		<form action="fWritePro.jsp" method="post" enctype="multipart/form-data">
			글쓴이 : <input type="text" name="name"> <br>
			비밀번호 : <input type="password" name="pass"> <br>
			제목 : <input type="text" name="subject"> <br>
			내용 : <textarea rows="10" cols="20" name="content"></textarea> <hr>
			
			첨부파일 : <input type="file" name="file"> <br>
			
			<input type="submit" value="글쓰기">
		</form>
	</fieldset>
</body>
</html>