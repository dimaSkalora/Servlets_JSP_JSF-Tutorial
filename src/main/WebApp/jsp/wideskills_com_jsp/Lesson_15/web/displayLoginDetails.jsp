<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display Details</title>
</head>
<body>
<%  String username=request.getParameter("username");
    String password=request.getParameter("password");
    String message="Username is : "+ username + " <br/> "+ "Password is :" + password  ;
%>
<strong>     <%= message %>     </strong>
</body>
</html>
