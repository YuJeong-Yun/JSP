<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>uploadPro.jsp</h1>
	<%
		// 업로드 폴더
		// String uploadPath = "C:\\프로젝트\\zzz";
		// => 상용서비스에서의 직접경로 업로드 불가능
		// => 가상 경로 (upload 폴더 만들었음)
		String uploadPath = request.getRealPath("upload");
				
		// 업로드 파일의 크기 (10MB로 설정했음)
		int size = 10 * 1024 * 1024;
		
		// 파일 업로드
		MultipartRequest multi 
				= new MultipartRequest(
						request,	// request 내장객체 (파라메터, 파일정보)
						uploadPath,		// 업로드 위치(가상경로)
						size,		// 업로드 파일의 크기 
						"UTF-8",		// 업로드시 인코딩처리
						new DefaultFileRenamePolicy()		// 중복된 파일이름 업로드시 처리 객체 -> 중복된 이름 넣으면 이름 뒤에 (1) 이런식으로 붙임
						);
		
		
		System.out.println("파일 업로드 완료! ");
		
		// 전달해준 파라메터값 저장
		// 전달할 때 form 형태가 변경되었기 때문에 (enctype을 추가했음)
		// 받을때도 변경된 형태를 처리해서 저장 (request아니라 multi 이용)
		String name = multi.getParameter("name");
		String msg = multi.getParameter("msg");
		String fileName = multi.getFilesystemName("file");
		String oFileName = multi.getOriginalFileName("file");
	
	%>

	이름 : <%=name %> <br>
	메세지 : <%=msg %> <br>	
	<!-- 서버에 중복된 이름 올라가지 않도록 뒤에 (1) 등 붙여줌. -->
	서버에 업로드 되는  파일명(fileName) : <%=fileName %> <br>
	<!-- 사용자가 알아볼 수 있도록 사용자가 업로드한 원본 파일명 저장 -->
	실제 업로드 된 원본 파일명(oFileName) : <%=oFileName %> <br>
	
	<hr><hr>
	
	<!-- 사용하는 브라우저에 파서가 포함되어 있는경우 화면에 바로 파싱되어 출력됨
		/ 해당 파서가 없는 경우 다운로드 형태로 처리 -->
	<!-- 이름은 서버에 업로드한 이름(oFileName 말고 fileName) 가져가야함 -->
	
	<!-- 가상 경로에 바로 접근하는 방식 
	이미지, 텍스트와 같은 브라우저 파싱이되는 데이터들은 다운이 어려움 -->
	<a href="../upload/<%=fileName%>">파일 다운로드(방법1)</a>
	
	<a href="fileDown.jsp?fileName=<%=fileName%>"> 다운로드 페이지 이동(방법2)  </a>
	
	
	

</body>
</html>