<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Redirect JSP</title>
</head>
<body>
<%
    System.out.println("Welcome Message : Redirect JSP");
    request.setAttribute("Request-Attribute", "Value of Attribute ");
    response.sendRedirect("jsp2.jsp");
%>
</body>
</html>
