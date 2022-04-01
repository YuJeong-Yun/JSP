<%@page import="com.itwillbs.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>loginPro.jsp</h1>

	<%
		// 한글 처리
		request.setCharacterEncoding("UTF-8");

		// 전달된 정보 저장(파라메터)-id,pw
	%>
	<jsp:useBean id="mb" class="com.itwillbs.member.MemberBean"></jsp:useBean>
	<jsp:setProperty property="*" name="mb" />
	<%
		// 전달받은 정보를 비교하기 위해서 DB로 이동
		// DAO 객체를 사용
		MemberDAO dao = new MemberDAO();

		// 로그인여부를 체크하는 동작
		int result = dao.loginCheck(mb);
		// result 결과 (-1, 0, 1)
		if (result == -1) {
	%>
			<script type="text/javascript">
				alert("비회원 입니다!");
				history.back();
			</script>
	<%
		} else if (result == 0) {
	%>
			<script type="text/javascript">
				alert(" 비밀번호 오류! ");
				history.back();
			</script>
	<%
		} else { // result == 1
			// 세션에 아이디 정보를 저장
			session.setAttribute("id", mb.getId());
			System.out.println(mb.getId());
			System.out.println(session.getAttribute("id"));
	%>
			<script type="text/javascript">
				alert("로그인 성공!");
				location.href="main.jsp";
			</script>
	
	<%
		}
	%>
</body>
</html>