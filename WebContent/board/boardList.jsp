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
		
		
		//////////////////////////////////////////////////////////////////////
		// 페이징 처리 1
		// 한 페이지에 보여줄 글의 개수 설정 (5개로 설정)
		int pageSize = 5;
		// 현재 페이지 정보 계산하기
		String pageNum = request.getParameter("pageNum");		
		if(pageNum == null) {
			pageNum = "1";  // pageNum 정보가 없을 경우 항상 1페이지
		}
		
		// 페이지 시작 행 계산 ( 1페이지에 10개씩 나오므로 - 1, 11, 21, 31, 41, ..... )
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize + 1;
		// 페이지 끝 행 계산
		int endRow = currentPage * pageSize;
		
		//////////////////////////////////////////////////////////////////////
		
		
		
		ArrayList boardList = null;		
		// DB에 있는 글정보를 모두 가져와서 화면에 출력
		// memberList 파일과 로직 비슷함
		if(cnt != 0) {
			boardList = dao.getBoardList(startRow, pageSize);
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
				BoardBean bb = (BoardBean)boardList.get(i);
	%>
				<tr>
					<td><%= bb.getNum() %></td>
					<td>
					<%if(bb.getRe_lev()>0) {%>
						<img src="level.gif" width="<%=bb.getRe_lev()*10%>">
						<img src="re.gif">
					<% } %>
						<a href="boardContent.jsp?num=<%=bb.getNum()%>&pageNum=<%=pageNum%>"><%= bb.getSubject() %></td></a>
					<td><%= bb.getName()%></td>
					<td><%= bb.getDate() %></td>
					<td><%= bb.getReadcount() %></td>
					<td><%= bb.getIp() %></td>
				</tr>
	<% } }  %>	
	</table>
	
	<%
		// 게시판에 글이 존재할 때
		if(cnt != 0) {
			
			// 전체 필요한 페이지 수 계산
			int pageCount = cnt / pageSize + (cnt%pageSize==0 ? 0 : 1);
			
			// 한 화면에 보여 줄 페이지 블럭의 수 (3개로 설정)
			int pageBlock = 3;
			
			
			// 페이지 블럭의 시작 번호   1~10=>1  11~20=>11  21~30=>21
			// 1~3=>1 4~6=>2 7~9=>3
			int startPage = ((currentPage-1) / pageBlock) * pageBlock + 1;		
			// 페이지 블럭의 끝 번호
			int endPage = startPage + pageBlock - 1;
			if(endPage > pageCount) { 
				endPage = pageCount;
			}
			
			
			// 이전
			if(startPage > pageBlock) {
	%>
				<a href="boardList.jsp?pageNum=<%= startPage - pageBlock %>">[이전]</a>
	<%	
			}
			// 1 2 3 4 .... 10 11 12 ...... 20
			for(int i=startPage; i<= endPage; i++) {
	%>
				<a href="boardList.jsp?pageNum=<%=i%>">[<%= i %>]</a>
	<%
			}
			// 이후
			if(endPage < pageCount) {
	%>
				<a href="boardList.jsp?pageNum=<%= startPage + pageBlock %>">[이후]</a>
	<%
			}
			
		}
	
	
	%>
	
	
	
</body>
</html>