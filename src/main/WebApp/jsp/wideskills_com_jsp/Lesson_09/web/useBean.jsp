<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Use Bean Example </title>
</head>
<body>
<jsp:useBean id="person" class="jsp.wideskills_com_jsp.lesson_09.Person" scope="request">Hello<br/></jsp:useBean>
First Name :: <%=person.getFirstName() %>
<br/>
Last Name :: <%=person.getLastName() %>
<!--
    person.setFirstName("First Name");
    person.setLastName("Last Name");
-->
    <jsp:setProperty name="person" property="firstName" value="First Name" />
    <jsp:setProperty name="person" property="lastName" value="Last Name" />
<br/>
<jsp:include page="anotherUseBean.jsp"></jsp:include>
</body>
</html>
