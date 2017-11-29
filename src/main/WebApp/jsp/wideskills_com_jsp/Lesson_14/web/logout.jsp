<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>logout </title>
</head>
<body>
<%
    session.invalidate();
    // try to access session object
    session.getAttribute("username");
%>
</body>
</html>
