<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<%@page isErrorPage="true" %>
<body>
<h4>==== Null Pointer  Error   === </h4>
<%=
exception.getMessage()
%>
</body>
</html>