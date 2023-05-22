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
		Cookie[] cookies = request.getCookies();
				
		if(cookies != null) {
			for(int i=0;i<cookies.length;i++) {
				if(cookies[i].getValue().equals("tiger")){
					out.println(cookies[i].getValue()+"님 안녕하세요!");
				}
			}
		}
	%>
	<br>
	<a href="logout.jsp">로그아웃</a>
	
	
</body>
</html>