<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> JSP using Declaration tag </title>
</head>
<body>
<%!
    String description = "description variable is a instance variable." ;
    public int sum(int argument1, int argument2)
    {
        int result = argument1+ argument2;
        return result;
    }
%>
<!--  Call method -->
<%
    out.println(description);
    out.println("<br/>");
    int result = sum( 2, 3);
    out.println(result);
%>
</body>
</html>
