<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
</head>
<body>
<h1>설정 확인</h1>

<ol>
	<li><a href="Hello.html">html 실행 확인</a></li>
	<li><a href="Hello.jsp">JSP 실행 확인</a></li>
	<li><a href="HelloServlet">Servlet 실행 확인</a></li>
	<li><a href="dept.jsp">Mybatis 실행 확인</a></li>
	<li><a href="chap05/bufferInfo.jsp">buffe 실행 확인</a></li>
	<li><a href="chap05/userPageContext.jsp">PageContext 기본객체</a></li>
	<li><a href="chap05/readInitParameter.jsp">초기화 파라미터 읽어오기</a></li>
	<li><a href="chap05/viewServerInfo.jsp">서버 정보 출력</a></li>
	<li><a href="chap06/readParameterNoErrorPage.jsp">파라미터 출력</a></li>
	<li><a href="cookie/dept.jsp">Cookie Login</a></li>
	<li><a href="session/dept.jsp">Session Login</a></li>
	<li><a href="logout.jsp">logout 화면</a></li>
</ol>


</body>
</html>