<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>
    </title>
</head>
<body>
<H1>Select the fruits you like ? </H1>
<form name="MutlipleValues" action="displayResults.jsp" method="POST">
    Orange <input type ="checkbox" name="CheckBoxGrp" value="Orange"/>
    <br/>
    Apple <input type ="checkbox" name="CheckBoxGrp" value="Apple"/>
    <br/>
    Banana<input type ="checkbox" name="CheckBoxGrp" value="Banana"/>
    <br/>
    <input type="submit" value="Submit"/>
</form>
</body>
</html>
