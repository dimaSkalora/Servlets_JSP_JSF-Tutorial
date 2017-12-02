<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> EL Scopes </title>
</head>
<body>
<%
    request.setAttribute("person", "Person in Request Scope");
    session.setAttribute("person", "Person in Seccion Scope");
    application.setAttribute("person", "Person in Application Scope");
    pageContext.setAttribute("person", "Person in Page Scope");
%>
Value of Person is ${person}
</body>
</html>