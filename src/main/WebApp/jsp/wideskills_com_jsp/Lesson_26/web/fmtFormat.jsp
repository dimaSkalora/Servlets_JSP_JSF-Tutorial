<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.DateFormat"%>
<html>
<head>
    <title> Format date and number  </title>
</head>
<body>
<%@page import="java.util.*" %>
<h3> Display Current Date and Number based on client request locale </h3>
<%
    Locale locale = request.getLocale();
    Date currentDate= new Date();
    DateFormat dateFormat= DateFormat.getDateInstance(DateFormat.FULL, locale);
    NumberFormat numberFormat =  NumberFormat.getNumberInstance(locale);
%>
Locale is  <%= locale.getDisplayCountry() %>
<br/>
Current date ::
<%=
dateFormat.format(currentDate)
%>
<br/>
Number (100045.34) ::
<%=
numberFormat.format(100045.34)
%>
</body>
</html>
