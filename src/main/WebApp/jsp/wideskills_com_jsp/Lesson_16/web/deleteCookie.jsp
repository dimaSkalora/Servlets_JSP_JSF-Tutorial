<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Cookie Example</title>
</head>
<body>
<H1>JSP deleting  userID cookie sent earlier  to client </H1>
<%
    Cookie[] cookies= request.getCookies();
    //check null because there are chances that there are no cookies
    if(cookies !=null)
    {
        for(int i=0 ;i<cookies.length;i++ )
        {
            Cookie cookie = cookies[i];
            if(cookie.getName().equals("userID"))
            {
                cookie.setMaxAge(0);
                response.addCookie(cookie);
            }
        }
    }
%>
</body>
</html>
