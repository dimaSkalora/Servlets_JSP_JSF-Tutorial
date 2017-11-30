<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP 2</title>
</head>
<body>
<h3> Welcome Message : JSP 2 </h3>
<%
    System.out.println("Welcome Message : JSP 2");
    Object attributeValue = request.getAttribute("Request-Attribute");
%>
<%=
"Request-Attribute is : " + attributeValue
%>
</body>
</html>
