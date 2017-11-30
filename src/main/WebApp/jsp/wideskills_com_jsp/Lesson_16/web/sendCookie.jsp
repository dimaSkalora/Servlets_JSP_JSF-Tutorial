<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Send Cookie Example</title>
</head>
<body>
<H1>JSP sending two cookies to client </H1>
<%
    Cookie userIdCookie= new Cookie("userID", "guest");
    userIdCookie.setMaxAge(24*60*60);
    Cookie createdBy= new Cookie("createdBy","sendCookieJSP" );
    createdBy.setMaxAge(24*60*60);
    response.addCookie(userIdCookie);
    response.addCookie(createdBy);
%>
</body>
</html>
