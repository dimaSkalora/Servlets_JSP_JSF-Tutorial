<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> c:if tag example </title>
</head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<c:set var="bonus" value="2000" />
<c:if test="${bonus > 1000}">
    Bonus is greater than $ 1000!!!
</c:if>
<br/>
<c:if test="${bonus < 1000}" var="evaluatedValue" scope="request"/>
Is Bonus less than $1000 ::   <c:out value="${evaluatedValue}"></c:out>
</body>
</html>
