<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> c url tag Example </title>
</head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<c:url var="googleUrl" value="http://www.google.com" />
<a href="${googleUrl}">Google</a>
<br/>
<c:url var="loginUrl" value="/login.jsp" context="/curl"></c:url>
<a href="${loginUrl}">Login</a>
</body>
</html>
