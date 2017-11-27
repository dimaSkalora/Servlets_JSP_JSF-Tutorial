<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> JSP using isELIgnored tag </title>
</head>
<body>
<%
    request.setAttribute("RequstAttribute", "Hey I am request Attribute");
%>
${requestScope.RequstAttribute}
</body>
</html>
