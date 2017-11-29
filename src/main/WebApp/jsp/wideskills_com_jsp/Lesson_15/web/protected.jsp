<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Protected JSP </title>
</head>
<body>
<%
    String name = request.getParameter("name");
%>
<strong> Value Entered by User is :: </strong> <%= name %>
</body>
</html>