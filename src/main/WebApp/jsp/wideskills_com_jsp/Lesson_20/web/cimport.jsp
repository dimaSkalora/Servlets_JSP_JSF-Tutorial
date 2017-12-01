<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> c:import tag example </title>
</head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<c:out value="This is the example of c:import tag "/>
<br/>
<c:import url="header.jsp"> </c:import>
<br/>
<c:import var="importedContent" url="header.jsp"></c:import>
<c:out value="${importedContent}" escapeXml="false"/>
</body>
</html>
