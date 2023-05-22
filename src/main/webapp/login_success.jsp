<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();//쿠키 가져오기
		
		//out.println("쿠키1의 이름:" + cookies[0]);
		//out.println("쿠키2의 이름:" + cookies[1]);
		out.println("아이디:" + cookies[0].getName()+"<br>");
		out.println("아이디:" + cookies[1].getName()+"<br>");
		out.println(cookies[0].getValue()+"님 로그인을 환영합니다!"+"<br>");
	%>
</body>
</html>