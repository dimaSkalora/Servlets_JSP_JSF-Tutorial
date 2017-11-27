<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title> Error JSP </title>
</head>
<body>
<h4> Something has gone wrong </h4>
<h5>This page is declared as isErrorPage so we have exception implicit variable</h5>
<%
    exception.printStackTrace(new java.io.PrintWriter(out));
%>
</body>
</html>
