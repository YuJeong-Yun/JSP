<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 내장객체 - 영역객체 정보를 생성
		pageContext.setAttribute("p", "pageScope Value!");
		request.setAttribute("r", "requestScope Value!");
		session.setAttribute("s", "sessionScope Value!");
		application.setAttribute("a", "applicationScope Value!");
	%>

	<h1>scopePro.jsp</h1>
	<%
		// 전달된 파라미터 정보를 저장
		String id = request.getParameter("id"); 
		String pw= "12345qq";
	%>
	
	<h2>아이디 : <%= id %></h2>
	<hr>
	
	pageContext 객체의 값 : <%=pageContext.getAttribute("p") %> <br>
	request 객체의 값 :	<%=request.getAttribute("r") %> <br>
	session 객체의 값 : <%=session.getAttribute("s") %> <br>
	application 객체의 값 :<%=application.getAttribute("a") %> <br>

	<hr><hr>
	
	<h1>페이지 이동</h1>
	
	<h2> html -a태그 </h2>
	<h3>파라미터, session, application 전달 가능</h3>
	<!-- id정보를 전달 -->
	<a href="scopeAction.jsp?id=<%=id%>&pw=<%=pw%>">scopeAction.jsp 로 이동하기</a>
	
	<hr>
	<h2>JavaScript - location.href</h2>
	<script type="text/javascript">
// 		alert("JS사용 페이지 이동!");
<%--  		location.href="scopeAction.jsp?id=<%=id%>&pw=<%=pw%>";  --%>
	</script>
	
	<hr>
	<h2>JSP - response.sendRedirect()</h2>
	<%
// 		response.sendRedirect("scopeAction.jsp?id="+id+"&pw="+pw);
	%>
	
	<h2>* JSP -> HTML -> JS 순서로 실행</h2>
	
	<hr>
	<h2>포워딩 - forward(액션태그, 자바코드)</h2>
	<h3>파라메터, request, session, application 전달 가능</h3>
	포워딩 방식 : 페이지 이동 시 주소는 변경x, 화면만 변경 o + request 객체의 정보도 전달 가능!
	
	
<%-- 	<jsp:forward page="scopeAction.jsp"></jsp:forward> --%>
	
	
	
</body>
</html>