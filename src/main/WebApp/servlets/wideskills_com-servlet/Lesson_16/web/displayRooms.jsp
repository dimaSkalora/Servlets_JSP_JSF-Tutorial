<%@ page import="servlets.wideskills_com_servlet.lesson_16.Room" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Available Rooms</title>
</head>
<body>
<H4>Below Rooms are available for the selected Residence.</H4>
<%
    Object obj  = request.getAttribute("availableRooms");
    List<Room> rooms = (List<Room>)obj;
%>
<table border="1">
    <thead>
    <tr>
        <th>Room Number</th>
        <th>Residence Code</th>
        <th>Floor Number</th>
        <th>Room Rent</th>
    </tr>
    </thead>
    <%
        for(int i=0;i<rooms.size();i++)
        {
            Room room = rooms.get(i);
    %>
    <tr>
        <td><%= room.getRoomNumber()%></td>
        <td><%= room.getResidenceCode()%></td>
        <td><%= room.getFloorNumber()%></td>
        <td><%= room.getRoomRent()%></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
