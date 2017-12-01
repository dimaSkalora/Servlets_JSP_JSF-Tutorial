<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> c:remove tag example </title>
</head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<c:set var="pageVariable" value="Variable in Page Scope" />
Page Scoped Variable :: <c:out value="${pageVariable}"/>
<br/>
<c:set var="sessionVariable" value="Variable in Session Scope"  scope="session"/>
Session Scoped Variable :: <c:out value="${sessionVariable}"/>
<br/>
<c:remove var="pageVariable" scope="page"/>
Page Scoped Variable After c:remove :: <c:out value="${pageVariable}"/>
<br/>
<c:remove var="sessionVariable"/>
Session Scoped Variable After c:remove :: <c:out value="${sessionVariable}"/>
<br/>
</body>
</html>