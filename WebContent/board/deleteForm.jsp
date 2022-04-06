<%@page import="com.itwillbs.board.BoardBean"%>
<%@page import="com.itwillbs.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>deleteForm.jsp</h1>
	<h2>글 삭제 페이지</h2>
	
	<%
		// 전달된 데이터
		int num = Integer.parseInt(request.getParameter("num"));
		String pageNum = request.getParameter("pageNum");
	%>

	<fieldset>
		<!-- DB안에 저장되는 데이터는 input 태그로, DB에 들어가지 않는 데이터는 주소에 파라메터 형태로 전달 -->
		<form action="deletePro.jsp?pageNum=<%=pageNum %>" method="post">		
			<input type="hidden" name="num" value="<%=num%>">
			
			비밀번호 : <input type="password" name="pass"> <br>

			<input type="submit" value="글 삭제">
		</form>
	</fieldset>
</body>
</html>