<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir = "/WEB-INF/tags" prefix="sitemesh" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>maindeco2.jsp<sitemesh:write property="title"/></title>
</head>
<body>
ABCDEFGHIJKLNMOPQRSTUVWXYZ<br>
#-#-#-#-#-#-TOP-#-#-#-#-#<br>
ABCDEFGHIJKLNMOPQRSTUVWXYZ<br>

<sitemesh:write property="body"/>

ABCDEFGHIJKLNMOPQRSTUVWXYZ<br>
#-#-#-#-#-#-BOTTOM-#-#-#-#-#<br>
ABCDEFGHIJKLNMOPQRSTUVWXYZ<br>

</body>
</html>