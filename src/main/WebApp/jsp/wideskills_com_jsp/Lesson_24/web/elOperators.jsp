<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> EL Operators  </title>
</head>
<body>
<%
    boolean flag= true ;
%>
<strong>Arithmetic Operator EL Example:</strong> ${initParam.Bonus + 200}
<br><br>
<strong>Relational Operator EL Example:</strong> ${initParam.Bonus < 200}
<br><br>
<strong>Logical Operator EL Example:</strong> ${flag && false}
<br><br>
<strong>Logical Operator EL Example:</strong> ${flag || true}
</body>
</html>
