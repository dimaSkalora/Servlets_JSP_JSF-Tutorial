<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> c redirect tag Example </title>
</head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<c:redirect url="/login.jsp" context="/credirectHelloWorld"></c:redirect>
</body>
</html>