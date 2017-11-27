
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP Displaying Headers</title>
</head>
<body>
<%@ page import="java.util.Enumeration"%>
<%
    Enumeration<String> headerEnumeration= request.getHeaderNames();
    StringBuffer buffer = new StringBuffer();
    while(headerEnumeration.hasMoreElements())
    {
        String headerName= headerEnumeration.nextElement();
        String headerValue =request.getHeader(headerName);
        buffer.append(headerName + ":" + headerValue);
        buffer.append("<br/>");
    }
    response.setContentType("text/html");
    out.println(buffer.toString());
%>
</body>
</html>