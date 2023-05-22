<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
			
		for(int i=0;i<cookies.length;i++) {
			cookies[i].setMaxAge(0);//쿠키 삭제(유효시간 0으로 셋팅) 
			response.addCookie(cookies[i]);
		}
	
	%>
	<br>
	<a href="cookieTest.jsp">쿠키 테스트로 바로가기</a>
</body>
</html>