<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> JSP custom Tag </title>
</head>
<%@taglib uri="http://localhost:8080/myTags/taglib" prefix="myTags" %>
<body>
<h4>
    <myTags:welcome/>
</h4>

<h4>
    <myTags:test-body-content>
        Body Content goes here !!
    </myTags:test-body-content>
</h4>

<h4>
    <myTags:average input1="2" input2="4" />
</h4>
<%
    int arg1= 5;
%>
<br/>

<h4>
    <myTags:average input1="<%= arg1%>" input2="4" />
</h4>
</body>
</html>
