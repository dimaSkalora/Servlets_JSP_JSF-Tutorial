<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Use Bean Example </title>
</head>
<body>
<jsp:useBean id="account" class="jsp.wideskills_com_jsp.lesson_23.Account" scope="request">
</jsp:useBean>
Account Number :: <%=account.getAccountNumber() %>
<br/>
Account Balance ::  <%=account.getBalance() %>
</body>
</html>
