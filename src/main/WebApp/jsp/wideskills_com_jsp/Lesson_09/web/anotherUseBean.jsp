<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Use Bean Example </title>
</head>
<body>
<jsp:useBean id="person" class="jsp.wideskills_com_jsp.lesson_09.Person" scope="request"/>
First Name :: <%=person.getFirstName() %>
<br/>
Last Name :: <%=person.getLastName() %>
</body>
</html>
