<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="java.util.List"%>
<%@page import="com.hybrid.domain.Dept"%>
<%@page import="com.hybrid.mapper.DeptMapper"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>dept.jsp</title>
</head>
<body>
<h1>Dept Test</h1>
<%
	String login = (String)session.getAttribute("LOGIN");	
	
	if(login == null){
		response.sendRedirect("/session/loginForm.jsp");
		return;
		
	}


%>



<%
	ApplicationContext ctx =  WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext());
	DeptMapper mapper = ctx.getBean(DeptMapper.class);
	mapper.delete(65);
	
	mapper.insert(new Dept(65, "xxx", "yyy"));
	List<Dept> depts = mapper.selectAll();
	System.out.println("###################################");
	for(Dept dept : depts){
		System.out.println(dept);
		out.println(dept + "<br>");
	}
	System.out.println("###################################");
	out.println("<hr>");
	
	mapper.update(new Dept(65, "xxx1", "yy1y"));
	depts = mapper.selectAll();
	
	for(Dept dept : depts){
		System.out.println(dept);
		out.println(dept + "<br>");
	}
	System.out.println("###################################");
	out.println("<hr>");
	
	mapper.delete(65);
	mapper.delete(66);
	depts = mapper.selectAll();
	
	for(Dept dept : depts){
		System.out.println(dept);
		out.println(dept + "<br>");
		
	}

	
%>

<a href="/session/logout.jsp"> 로그아웃 </a>
</body>
</html>