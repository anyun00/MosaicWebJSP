<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>cookie.jsp</title>
</head>
<body>

<%
	
	Cookie c = new Cookie("id", "hong");
	c.setPath("/chap09"); //chap09 이하일때 쿠키정보 서버로 넘겨

	
	response.addCookie(c);
%>
<h1>쿠키 생성</h1>


</body>
</html>