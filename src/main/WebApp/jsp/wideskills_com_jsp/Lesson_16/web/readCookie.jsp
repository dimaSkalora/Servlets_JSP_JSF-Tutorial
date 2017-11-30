<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Read Cookie Example</title>
</head>
<body>
<H1>JSP Reading two cookies to client </H1>
<table border=”1”>
    <tr>
        <td>Cookie Name </td>
        <td>Cookie Value </td>
        <td>Cookie Max Age  </td>
    </tr>
    <%
        Cookie[] cookies= request.getCookies();
        // check null because there are chances that there are no cookies
        if(cookies !=null)
        {
            for(int i=0 ;i<cookies.length;i++ )
            {
                Cookie cookie = cookies[i];
                out.println(" <tr> ");
                out.println("<td>" + cookie.getName() + "</td>" );
                out.println("<td>" + cookie.getValue() + "</td>" );
                out.println("<td>" + cookie.getMaxAge() + "</td>" );
                out.println(" </tr> ");
            }
        }
    %>
</table>
</body>
</html>