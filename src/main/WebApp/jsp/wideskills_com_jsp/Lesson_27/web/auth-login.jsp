<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Form</title>
</head>
<body>
<form name="logonform" action="j_security_check" method="POST">
    Username: <input type="text" name="j_username"/>
    <br/>
    Password:<input type="password" name="j_password"/>
    <br/>
    <input type="submit" value="Submit"/>
</form>
</body>
</html>
