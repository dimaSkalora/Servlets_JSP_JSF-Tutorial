<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Main Page </title>
</head>
<body>
<H4> This is main page and to explain include directive </H4>
<br/>
<jsp:forward page="displayIPForward.jsp" >
    <jsp:param name="param1" value="value1"/>
    <jsp:param name="param2" value="value2"/>
</jsp:forward>
</body>
</html>
