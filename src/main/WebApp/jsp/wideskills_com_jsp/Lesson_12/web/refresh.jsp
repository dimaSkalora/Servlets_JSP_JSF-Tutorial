<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Refresh Example  </title>
</head>
<body>
<H4> This is Refresh Page Example .Page will auto refresh after every 10 seconds  </H4>
<br/>
<%
    response.setIntHeader("Refresh", 5);
    out.println(new java.util.Date());
%>
</body>
</html>
