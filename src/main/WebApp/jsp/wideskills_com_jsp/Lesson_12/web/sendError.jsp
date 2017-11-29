<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Send Error Example </title>
</head>
<body>
<%
    response.sendError(567,"This is error message");
%>
</body>
</html>
