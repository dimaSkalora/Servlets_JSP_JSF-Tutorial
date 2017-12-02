<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Test Error Page JSP </title>
</head>
<body>
This page is generating error intentionally.
<%
    String type = request.getParameter("type");
    if(type.equals("error"))
    {
        String str = null;
        out.println(str.toString());
    }
    else
    {
        response.setStatus(404);
    }
%>
</body>
</html>
