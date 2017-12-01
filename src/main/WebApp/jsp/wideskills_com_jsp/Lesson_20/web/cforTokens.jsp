<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> c:forTokens tag example </title>
</head>
<%@page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<c:forTokens items="Apple,Orange,Banana" var="i" delims=",">
    <c:out value="Value  is ${i} "></c:out>
    <br/>
</c:forTokens>
<hr/>
</body>
</html>