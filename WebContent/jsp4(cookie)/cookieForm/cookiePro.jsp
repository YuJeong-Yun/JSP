<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>cookiePro.jsp</h1>

	<%
		String language = request.getParameter("language");
		out.println(language);
		// 선택된 정보를 바탕으로 다른 결과를 보여주기
		// 브라우저 종료와 상관없이 처리 (쿠키)
		Cookie cookie = new Cookie("lang", language);
		// 쿠키값 -> 선택한 라디오 버튼의 값을 쿠키값으로 설정

		// 쿠키값 설정 -> 1시간
		cookie.setMaxAge(3600);
		// 클라이언트로 전달(응답정보 저장)
		response.addCookie(cookie);
		// 페이지 이동(cookieForm.jsp)
	%>
	<script type="text/javascript">
		alert('언어 정보 쿠키값  설정완료! ');
		location.href = "cookieForm.jsp";
	</script>
</body>
</html>