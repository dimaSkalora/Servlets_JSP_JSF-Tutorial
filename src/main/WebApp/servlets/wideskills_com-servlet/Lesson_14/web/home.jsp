<!DOCTYPE html>
<html>
<head>
    <title>Home Page</title>
</head>
<body>
<%
    String message= request.getAttribute("message").toString();
    Object obj= request.getAttribute("name");
    String name = "";
    if(obj!=null)
    {
        name= obj.toString();
    }
    obj= request.getAttribute("address");
    String address = "";
    if(obj!=null)
    {
        address= obj.toString();
    }
    out.println(message);
    out.println("<br/>");
    out.println("Name :: " + name);
    out.println("<br/>");
    out.println("Password :: "+address);
%>
</body>
</html>
