<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>errorPage.jsp</title>
</head>
<body>
<h1><%=exception.getMessage() %></h1>
<p>
	<%=exception.getLocalizedMessage() %>
</p>

<!--  인터넷 익스플로러는 512바이트가 넘어야 에러페이지가 나오기때문에 주석을 달았음.

	<%
		for (int i=0; i<512; i++)
			out.print((char)i);
	%>

 -->
</body>
</html>