<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display Contact Details</title>
</head>
<%@ page import="java.util.Enumeration"  %>
<body>
<%
    Enumeration<String> paramEnumeration= request.getParameterNames();
    StringBuffer buffer = new StringBuffer();
    while(paramEnumeration.hasMoreElements())
    {
        String paramName= paramEnumeration.nextElement();
        String paramValue =request.getParameter(paramName);
        buffer.append(paramName + ":" + paramValue);
        buffer.append("<br/>");
    }
%>
<strong> <%= buffer.toString() %>     </strong>
</body>
</html>
