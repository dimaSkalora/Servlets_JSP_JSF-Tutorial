<%@ page import="servlets.wideskills_com_servlet.bonus_robot_mvc.RobotDog" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Robot Dog</title>
</head>
<body>
<h2>list of created dog robots</h2>
<%
    Object obj  = request.getAttribute("availableRobotDogs");
    List<RobotDog> robotDogs = (List<RobotDog>)obj;
%>
<table border="1">
    <thead>
    <tr>
        <th>Model Name</th>
        <th>Weapon</th>
        <th>Height</th>
    </tr>
    </thead>
    <%
        for(int i=0;i<robotDogs.size();i++)
        {
            RobotDog robotDog = robotDogs.get(i);
    %>
    <tr>
       <td><%=robotDog.getModelName()%></td>
       <td><%=robotDog.getWeapon()%></td>
       <td><%=robotDog.getHeight()%></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
