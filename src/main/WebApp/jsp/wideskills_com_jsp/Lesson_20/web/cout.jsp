<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title> c:out tag example </title>
</head>
<body>
Static Text example ::
<c:out value="This is a static text "/>
<br/>
<br/>
Expression Example without escapeXml ::
<c:out value="${'<strong>This is an  example </strong>'}"/>
<br/>
<br/>
Expression Example with escapeXml as false ::
<c:out value="${'<strong>This is an example </strong>'}" escapeXml="false"/>
<br/>
<br/>
Default value Example ::
<%
    String variable = null;
%>
<c:out value="${variable}" default="This is default text"></c:out>
</body>
</html>
