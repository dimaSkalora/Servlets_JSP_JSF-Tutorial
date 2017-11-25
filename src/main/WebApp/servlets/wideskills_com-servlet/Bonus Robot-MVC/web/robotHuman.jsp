<%@ page import="servlets.wideskills_com_servlet.bonus_robot_mvc.RobotHuman" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Robot Human</title>
</head>
<body>
<h2>list of created human robots</h2>
<%
    Object obj  = request.getAttribute("availableRobotHumans");
    List<RobotHuman> robotHumens = (List<RobotHuman>)obj;
%>
<table border="1">
    <thead>
    <tr>
        <th>Model Name</th>
        <th>Weapon</th>
        <th>Power</th>
    </tr>
    </thead>
    <%
        for(int i=0;i<robotHumens.size();i++)
        {
            RobotHuman robotHuman = robotHumens.get(i);
    %>
    <tr>
        <td><%=robotHuman.getModelName()%></td>
        <td><%=robotHuman.getWeapon()%></td>
        <td><%=robotHuman.getPower()%></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
