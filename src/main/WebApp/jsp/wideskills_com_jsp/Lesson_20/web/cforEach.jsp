<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> c:forEach tag example </title>
</head>
<%@page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<c:forEach var="i" begin="1" end="10">
<c:out value="Value of counter is ${i} "></c:out>
<br/>
</c:forEach>
<hr/>
<c:forEach var="i" begin="1" end="10" step="2">
<c:out value="Value of counter is ${i} with step 2"></c:out>
<br/>
</c:forEach>
<hr/>
<%
    List<String> list = new ArrayList<String>();
    for(int i=0;i<10;i++)
    {
    list.add("Item" + i);
    }
    request.setAttribute("list", list);
%>
<c:forEach items="${list}" var="item" begin="0" end="9" varStatus="i">
    Value at ${varStatus.index} is  : ${item}
    <br/>
</c:forEach>
</body>
</html>
