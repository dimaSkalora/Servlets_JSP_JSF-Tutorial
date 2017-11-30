<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Redirect JSP</title>
</head>
<body>
<%
    System.out.println("Welcome Message : Redirect JSP");
    request.setAttribute("Request-Attribute", "Value of Attribute ");
    String Url = "http://www.google.com";
    response.setStatus(HttpServletResponse.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", Url);
%>
</body>
</html>