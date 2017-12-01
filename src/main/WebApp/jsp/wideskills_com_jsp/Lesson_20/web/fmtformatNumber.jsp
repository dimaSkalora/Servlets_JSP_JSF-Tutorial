<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>JSTL fmt:formatNumber Tag</title>
</head>
<body>
<c:set var="input" value="140476.9319" />
<fmt:setLocale value="en_US"/>
<p>Format Number : <fmt:formatNumber value="${input}"/></p>
<p>Format Currency :<fmt:formatNumber value="${input}" type="CURRENCY"/></p>
<fmt:formatNumber
        maxIntegerDigits="3"
        value="${input}"
        maxFractionDigits="3"
        minFractionDigits="1"
        minIntegerDigits="1"
        var="formattedValue"
/>
<p>Formatted Number with other Attributes : <c:out value="${formattedValue}"></c:out>
</body>
</html>
