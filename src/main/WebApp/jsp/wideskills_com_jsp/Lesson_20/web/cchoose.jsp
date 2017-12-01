<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> c:choose tag example </title>
</head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<c:set var="bonus" value="2000" />
<c:choose>
    <c:when test="${bonus < 1000}">
        <c:out value="Bonus is less than $ 1000!!!" />
    </c:when>
    <c:when test="${bonus > 1000}">
        <c:out value="Bonus is greater than $ 1000!!!" />
    </c:when>
    <c:otherwise>
        <c:out value="No conditions match" />
    </c:otherwise>
</c:choose>
</body>
</html>
