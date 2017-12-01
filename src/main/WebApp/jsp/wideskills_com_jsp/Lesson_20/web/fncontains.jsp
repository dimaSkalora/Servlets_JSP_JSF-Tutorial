<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>fn:contains example</title>
</head>
<body>
<c:set var="inputString" value="Hello I am Input String"/>
<c:set var="subString" value="am" />
<c:if test="${fn:contains(inputString, subString)}">
    <c:out value="Input String contains 'am' "/>
</c:if>
</body>
</html>
