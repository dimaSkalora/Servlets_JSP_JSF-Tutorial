<%@ page import="servlets.wideskills_com_servlet.bonus_robot_mvc.RobotCar" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Robot Car</title>
</head>
<body>
<h1>list of created car robots</h1>
<%
    Object obj  = request.getAttribute("availableRobotCars");
    List<RobotCar> robotCars = (List<RobotCar>)obj;
%>
<table border="1">
    <thead>
    <tr>
        <th>Model Name</th>
        <th>Weapon</th>
        <th>Speed</th>
    </tr>
    </thead>
    <%
        for(int i=0;i<robotCars.size();i++)
        {
            RobotCar robotCar = robotCars.get(i);
    %>
    <tr>
        <td><%= robotCar.getModelName()%></td>
        <td><%= robotCar.getWeapon()%></td>
        <td><%= robotCar.getSpeed()%></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
