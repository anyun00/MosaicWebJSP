<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" scope="request" class="com.hybrid.domain.MemberInfo"/>
    
<%
	member.setId("anyund00");
	member.setName("안윤정");
%>
   
<jsp:forward page="useObject.jsp"/>