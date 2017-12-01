<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> c:catch tag example </title>
</head>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<c:catch var="exceptionObject">
<%
      String str=null;
      str.toLowerCase();
    %>
</c:catch>
<c:if test = "${exceptionObject != null}">
    <p>The exception is : ${exceptionObject} </p>
</c:if>
</body>
</html>