<%@ page contentType="text/html;charset=UTF-8" language="java" %>
title=Title in Default Locale
usernameLbl=Username in default Locale
passwordLbl=Password
myBundle_es_US.properties
<html>
<head>
    <title> fmt:locale , fmt:message and fm:setBundle tag example </title>
</head>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"   uri="http://java.sun.com/jsp/jstl/fmt" %>
<body>
<fmt:setBundle basename="jsp.wideskills_com_jsp.Lesson_26.myBundle" var="resourceBundle"/>
Title in default Locale :: <fmt:message key="title" bundle="${resourceBundle}"/>
<br/>
<fmt:message key="usernameLbl" var="userMsg" bundle="${resourceBundle}"/>
Username in Default Locale :: <c:out value="${userMsg}"/>
<br/>
<fmt:setLocale value="es_US"/>
<fmt:setBundle basename="jsp.wideskills_com_jsp.Lesson_26.myBundle" var="resourceBundle"/>
Title in Spanish Locale :: <fmt:message key="title" bundle="${resourceBundle}"/>
<br/>
Username in Spanish Locale :: <fmt:message key="usernameLbl" bundle="${resourceBundle}"/>
</body>
</html>