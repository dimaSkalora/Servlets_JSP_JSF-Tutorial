<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contact Form</title>
</head>
<body>
<form name="contactform" action="displayContactDetails.jsp"  method="POST">
    Name: <input type="text" name="name" />
    <br />
    Address:<input type="text" name="address" />
    <br />
    Contact Number:<input type="text" name="contact" />
    <br />
    <input type="submit" value="Submit" />
</form>
</body>
</html>
