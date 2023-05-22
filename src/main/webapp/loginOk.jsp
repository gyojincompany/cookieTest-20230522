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
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals("tiger") && pw.equals("12345")){//로그인 성공
			//session.setAttribute("sessionId", id);
			
			Cookie cookie1 = new Cookie("cookieId", id);//쿠키 생성
			Cookie cookie2 = new Cookie("cookiePw", pw);//쿠키 생성
			response.addCookie(cookie1);//클라이언트의 컴퓨터로 서버에서 생성한 쿠키가 전송
			response.addCookie(cookie2);//클라이언트의 컴퓨터로 서버에서 생성한 쿠키가 전송			
			
			response.sendRedirect("login_success.jsp");
		} else {
			response.sendRedirect("login_fail.jsp");
		}
	%>
	
	
</body>
</html>