<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Display Session Information </title>
</head>
<%@page import="java.util.Date" %>
<body>
<%
    long creationTime = session.getCreationTime();
    String sessionId = session.getId();
    long lastAccessedTime = session.getLastAccessedTime();
    Date createDate= new Date(creationTime);
    Date lastAccessedDate= new Date(lastAccessedTime);
    StringBuffer buffer = new StringBuffer();
    if(session.isNew())
    {
        buffer.append("<h3>Welcome </h3>");
    }
    else
    {
        buffer.append("<h3>Welcome Back!! </h3>");
    }
    buffer.append("<STRONG> Session ID : </STRONG>" + sessionId);     buffer.append(" <BR/> ");
    buffer.append("<STRONG> Session Creation Time </STRONG>: " + createDate);
    buffer.append(" <BR/> "); buffer.append("<STRONG> Last Accessed Time : </STRONG>" + lastAccessedDate);
    buffer.append(" <BR/> ");
%>
<%=         buffer.toString()     %>
</body>
</html>
