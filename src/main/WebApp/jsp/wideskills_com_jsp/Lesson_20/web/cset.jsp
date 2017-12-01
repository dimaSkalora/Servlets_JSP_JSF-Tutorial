<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> c:set tag example </title>
</head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<c:set var="pageVariable" value="Variable in Page Scope" />
Page Scoped Variable :: <c:out value="${pageVariable}"/>
<br/>
<c:set var="sessionVariable" value="Variable in Session Scope"  scope="session"/>
Session Scoped Variable :: <c:out value="${sessionVariable}"/>
<br/>
<jsp:useBean id="person" class="jsp.wideskills_com_jsp.lesson_20.Person" scope="request"/>
<c:set target="${person}" property="firstName" value="Test" />
Value of First Name :: <c:out value="${person.firstName}"/>
</body>
</html>