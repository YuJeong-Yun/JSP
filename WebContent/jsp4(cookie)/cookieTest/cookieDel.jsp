<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>cookieDel.jsp</h1>

	<%
		// 쿠키값 삭제

		// 쿠키정보를 가져오기
		Cookie[] cookies = request.getCookies();

		// 쿠키 배열안에서 내가 저장한 쿠키 정보를 찾아서 삭제
		// => 쿠키의 유효기간을 설정

		if (cookies != null) {
			for (Cookie cookie : cookies) {
				// 쿠키이름이 'name' 대상 찾기
				if (cookie.getName().equals("name")) {
					//쿠키 삭제 (쿠키 유효기간 0)
					cookie.setMaxAge(0);

					// 변경된 정보를 클라이언트로 전송
					response.addCookie(cookie);

					// => 실제 파일삭제 X (HDD에 파일은 있음, but 데이터 사용이 불가능해진 것)
				}
			}
		}
	%>

	<script type="text/javascript">
		alert("쿠키값 삭제!");
		location.href="cookieTest.jsp";
	</script>
</body>
</html>