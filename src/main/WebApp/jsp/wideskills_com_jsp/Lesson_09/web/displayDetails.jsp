<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display Details</title>
</head>
<body>
<jsp:useBean id="personDetails" scope="request" class="jsp.wideskills_com_jsp.lesson_09.PersonDetails" />
<jsp:setProperty name="personDetails" property="name" param="name"/>
<jsp:setProperty name="personDetails" property="emailAddress" />
Name :: <jsp:getProperty property="name" name="personDetails"/>
<br/>
Email :: <jsp:getProperty property="emailAddress" name="personDetails"/>
<br/>
</body>
</html>
