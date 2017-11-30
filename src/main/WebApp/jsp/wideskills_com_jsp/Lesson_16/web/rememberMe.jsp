<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Form</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();
    String username="";
    String password = "";
    if(cookies!=null)
    {
        for(int i=0;i<cookies.length;i++){
            Cookie cookie = cookies[i];
            if(cookie.getName().equals("username-cookie"))
            {
                username= cookie.getValue();
            }
            else if(cookie.getName().equals("password-cookie"))
            {
                password= cookie.getValue();
            }
        }
    }
%>
<form name="logonform" action="displayHomePage.jsp" method="POST">
    Username: <input type="text" name="username" value ="<%= username %>"/>
    <br/>
    Password:<input type="password" name="password" value="<%= password %>"/>
    <br/>
    Remember Me<input type="checkbox" name="rememberMe" value ="true"/>
    <input type="submit" value="Submit"/>
</form>
</body>
</html>