<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Robot Factory</title>
</head>
<body>
    <h1>Create Robot</h1>
    <form name="createRobotForm" action="robotServlet" method="post">
        <table>
            <tr>
                <td>Create Robot type :: </td>
                <td><select id="Robot" name="Robot">
                    <option>Robot Car</option>
                    <option>Robot Dog</option>
                    <option>Robot Human</option>
                    <option>No Robot</option>
                </select>
                </td>
            </tr>
            <tr>
                <td><input type="submit" value="OK"></td>
            </tr>
        </table>
    </form>
</body>
</html>
