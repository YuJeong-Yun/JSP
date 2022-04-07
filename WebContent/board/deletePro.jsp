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
	<h1>deletePro.jsp</h1>
	
	<%
		// 한글 처리
		request.setCharacterEncoding("UTF-8");
	%>

	<!-- 전달되는 정보 저장 -->
	<!-- 자바빈 객체 생성 -->
	<jsp:useBean id="bb" class="com.itwillbs.board.BoardBean"/>
	<!-- 자바빈 객체에 전달된 파라메터 값 저장 -->
	<jsp:setProperty property="*" name="bb"/>
	
		<%	
		// DAO 객체 생성
		BoardDAO dao = new BoardDAO(); 
		
		// 글 삭제 동작()(deleteBoard()) - 삭제 결과 리턴 (-1, 0, 1)
		int result = dao.deleteBoard(bb);

		// 삭제 정보에 따른 페이지 이동
		// 삭제완료 1 : 게시판 페이지로 이동
		if(result == 1) {
	%>
			<script type="text/javascript">
				alert('게시글 삭제 완료!');
				location.href='boardList.jsp?pageNum=<%=request.getParameter("pageNum")%>';
			</script>
	<%		
		// 삭제완료 0 : 실제 삭제 X, 페이지 뒤로가기
		} else if(result == 0) {
	%>
			<script type="text/javascript">
				alert('글 비밀번호 오류!(삭제x)');
				history.back();
			</script>
	<%	
		// 삭제완료 -1 : 실제 삭제 X, 페이지 뒤로가기 
		} else {
	%>
			<script type="text/javascript">
				alert('글 없음 오류!');
				history.back();
			</script>
	<%
		}
	%>
	
</body>
</html>