<%@page import="com.itwillbs.board.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>writePro.jsp</h1>
	
	<%
		// 한글 처리
		request.setCharacterEncoding("UTF-8");
	%>
	
		<!-- 자바빈 객체 => BoardBean/BoardDTO -->
		<jsp:useBean id="bb" class="com.itwillbs.board.BoardBean"/> 
				
		<!-- 전달정보를 저장(파라메터-글쓴이, 비밀번호, 제목, 내용) -->
		<jsp:setProperty property="*" name="bb"/>
		<%
			System.out.println(bb);
		
			//  글 쓴 사람의 IP 주소를 추가 저장
			bb.setIp(request.getRemoteAddr());
			System.out.println(bb);
			
			
			// 글 정보를 저장하기 => DB에 접근
					
			// BoardDAO  객체 생성
			
			// 글쓰기 동작 
			
			// 리스트 페이지로 이동
		%>
		

</body>
</html>