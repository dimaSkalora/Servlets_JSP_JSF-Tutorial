<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>
    </title>
</head>
<body>
<H1>You have selected   </H1>
<%
    String message="";
    String values[] = request.getParameterValues("CheckBoxGrp"); if(values!=null)
{
    for(int i=0;i<values.length;i++)
    {
        message= message+ "<BR/>" + values[i];
    }
}
    response.setContentType("text/html");
%>
<%= message %>
</body>
</html>