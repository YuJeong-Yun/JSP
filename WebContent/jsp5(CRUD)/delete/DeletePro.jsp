<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>DeletePro.jsp</h1>

	<%
		// 전달되는 데이터 저장
		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

	%>
		<h3>아이디 : <%=id %></h3>
		<h3>비밀번호 : <%=pw %></h3>
		<hr>
	<%
		
		
		// DB 연결
		String DRIVER = "com.mysql.cj.jdbc.Driver";
		String DBURL = "jdbc:mysql://localhost:3306/jspdb";
		String DBID = "root";
		String DBPW = "1234";

		// 1. 드라이버 로드
		Class.forName(DRIVER);
		out.print("드라이버 로드 완료!<br>");

		// 2. 디비연결
		Connection con = DriverManager.getConnection(DBURL, DBID, DBPW);
		out.print("디비연결 완료!<br>");

		// 3. sql구문& pstmt 객체
		String sql = "delete from itwill_member where id = ? && pw = ?";
		PreparedStatement pstmt = con.prepareStatement(sql);

		pstmt.setString(1, id);
		pstmt.setString(2, pw);

		// 4. sql실행
		pstmt.executeUpdate();
		out.print("정보 삭제 완료!<br>");
	%>
</body>
</html>