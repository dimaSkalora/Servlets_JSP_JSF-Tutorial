<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage = "error.jsp"%>
<html>
<head>
    <title> Test Error Page JSP </title>
</head>
<body>
This page is generating error intentionally.
<%
    String str = null;
    out.println(str.toString());
%>
</body>
</html>
