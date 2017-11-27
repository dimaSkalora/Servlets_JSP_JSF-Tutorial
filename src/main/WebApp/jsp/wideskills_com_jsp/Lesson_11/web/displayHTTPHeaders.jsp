<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Displaying HTTP Headers</title>
</head>
<%@ page import="java.util.Enumeration"%>
<body>
<h3> HTTP Headers corresponding to this Request </h3>
<%
    Enumeration<String> headerEnumeration= request.getHeaderNames();
    StringBuffer buffer = new StringBuffer();
    while(headerEnumeration.hasMoreElements())
    {
        String headerName= headerEnumeration.nextElement();
        String headerValue =request.getHeader(headerName);
        buffer.append("<strong>" +headerName + "<strong>:" + headerValue);
        buffer.append("<hr/>");
    }
    response.setContentType("text/html");
    out.println(buffer.toString());
%>
</body>
</html>
