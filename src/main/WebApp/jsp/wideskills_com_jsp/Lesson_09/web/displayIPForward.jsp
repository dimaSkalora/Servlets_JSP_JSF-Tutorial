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
%>
</body>
</html>
