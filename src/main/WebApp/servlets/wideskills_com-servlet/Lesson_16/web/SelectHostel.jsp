<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Select Residence</title>
</head>
<body>
    <h4>Select the Residence to check availability of Rooms.</h4>
    <form name="selectResidenceForm" action="getRoomsByResidenceServlet" method="post">
        <table>
            <tr>
                <td>Select Residence ::</td>
                <td><select id="Residence" name="Residence">
                    <option>Residence 1</option>
                    <option>Residence 2</option>
                    <option>Residence 3</option>
                    <option>Residence 4</option>
                </select>
                </td>
            </tr>
            <tr>
                <td><input type="submit" value="Search"></td>
            </tr>
        </table>
    </form>
</body>
</html>
