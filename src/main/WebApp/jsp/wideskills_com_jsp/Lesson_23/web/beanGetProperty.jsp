<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Use Bean getProperty Example </title>
</head>
<body>
<jsp:useBean id="account" class="jsp.wideskills_com_jsp.lesson_23.Account" scope="request">
</jsp:useBean>
Account Number :: <jsp:getProperty property="accountNumber" name="account"/>
<br/>
Account Balance ::  <jsp:getProperty property="balance" name="account"/>
</body>
</html>
