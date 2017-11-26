<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> JSP using Expression tag </title>
</head>
<body>
Local Name :: <%= request.getLocalName() %>
<br/>
Port :: <%= request.getLocalPort() %>
<br/>
IP Address :: <%= request.getLocalAddr() %>
</body>
</html>