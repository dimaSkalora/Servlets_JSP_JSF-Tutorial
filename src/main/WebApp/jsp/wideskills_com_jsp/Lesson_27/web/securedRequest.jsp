<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> SecuredRequest JSP </title>
</head>
<body>
<h4>
    Secured JSP
</h4>
Username :: <%= request.getRemoteUser() %>
<br/>
Authentication Mechanism :: <%= request.getAuthType() %>
<br/>
<br/>
Is User belongs to Role "tomcat"? <%= request.isUserInRole("tomcat") %>
<br/>
Is User belongs to Role "role1"? <%= request.isUserInRole("role1") %>
</body>
</html>
