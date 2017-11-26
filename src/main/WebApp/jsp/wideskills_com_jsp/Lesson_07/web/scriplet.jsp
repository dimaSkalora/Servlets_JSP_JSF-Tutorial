<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> JSP using Scriplet tag </title>
</head>
<body>
<%
    String localName = request.getLocalName();
    int port = request.getLocalPort();
    String ipAddress = request.getLocalAddr();
    out.println("Local Name ::" + localName);
    out.println("<br/>");
    out.println("Port Number ::" + port);
    out.println("<br/>");
    out.println("IP Address ::" + ipAddress);
    out.println("<br/>");
%>
</body>
</html>
