<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Display IP address </title>
</head>
<body>
<%
    String ipAddress = request.getLocalAddr();
    out.println("Client IP address is " +ipAddress );
    out.println("<br/>");
    out.println("Param1 :: " + request.getParameter("param1") );
    out.println("<br/>");
    out.println("Param2 :: " + request.getParameter("param2") );
    out.println("<br/>");
%>
</body>
</html>
