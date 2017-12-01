<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> c param tag Example </title>
</head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<c:url var="googleUrl" value="http://www.google.com">
<c:param name="q" value="jsp"></c:param>
</c:url>
<a href="${googleUrl}">Google</a>
<br/>
</body>
</html>
