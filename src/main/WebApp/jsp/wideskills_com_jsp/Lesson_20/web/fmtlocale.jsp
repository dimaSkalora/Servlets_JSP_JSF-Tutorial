<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>fmt:locale, fmt:messageand fm:setBundle tag example </title>
</head>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"   uri="http://java.sun.com/jsp/jstl/fmt" %>
<body>
<fmt:setBundle basename="com.sample.jsp.tutorial.bundle.myBundle" var="resourceBundle"/>
Title in default Locale :: <fmt:message key="title" bundle="${resourceBundle}"/>
<br/>
<fmt:message key="usernameLbl" var="userMsg" bundle="${resourceBundle}"/>
Username in Default Locale :: <c:out value="${userMsg}"/>
<br/>
<fmt:setLocale value="es_US"/>
<fmt:setBundle basename="com.sample.jsp.tutorial.bundle.myBundle" var="resourceBundle"/>
Title in Spanish Locale :: <fmt:message key="title" bundle="${resourceBundle}"/>
<br/>
Username in Spanish Locale :: <fmt:message key="usernameLbl" bundle="${resourceBundle}"/>
</body>
</html>
