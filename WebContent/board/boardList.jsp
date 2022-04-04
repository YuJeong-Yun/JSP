<%@page import="com.itwillbs.board.BoardBean"%>
<%@page import="java.util.ArrayList"%>
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
	<h1>boardList.jsp</h1>
	<h2>게시판 글 목록</h2>
	
	<h3><a href="writeForm.jsp"> 글쓰기 </a></h3>
	<%
		// DAO 객체 생성
		BoardDAO dao = new BoardDAO();
	
		// 저장되어있는 글이 있는지 체크
		int cnt = dao.getBoardCount();
		
		ArrayList boardList = null;		
		// DB에 있는 글정보를 모두 가져와서 화면에 출력
		// memberList 파일과 비슷
		if(cnt != 0) {
			boardList = dao.getBoardList();
		}
	%>
	
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
			<th>ip</th>
		</tr> 
	<% 
		if(boardList != null) {
			for(int i=0; i < boardList.size(); i++) { 
				BoardBean bb =  (BoardBean)boardList.get(i);
	%>
				<tr>
					<td><%= bb.getNum() %></td>
					<td><%= bb.getSubject() %></td>
					<td><%= bb.getName()%></td>
					<td><%= bb.getDate() %></td>
					<td><%= bb.getReadcount() %></td>
					<td><%= bb.getIp() %></td>
				</tr>
	<% } }  %>	
	
	</table>
</body>
</html>