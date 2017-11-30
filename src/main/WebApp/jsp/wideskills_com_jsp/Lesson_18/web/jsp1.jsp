<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP 1</title>
</head>
<body>
<%
    System.out.println("Welcome Message : JSP 1");
    request.setAttribute("Request-Attribute", "Value of Attribute ");
    RequestDispatcher rd = request.getRequestDispatcher("/jsp2.jsp");
    rd.forward(request, response);
%>
</body>
</html>
