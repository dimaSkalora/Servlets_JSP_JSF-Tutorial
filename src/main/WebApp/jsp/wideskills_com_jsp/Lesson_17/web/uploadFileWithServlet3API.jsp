<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>File Upload Example using Servlet 3.0 API  </title>
</head>
<body>
<form action="uploadFileWithServlet3API.jsp" method="post"
      enctype="multipart/form-data">
    Select File to Upload:<input type="file" name="fileName"><br>
    <input type="submit" value="Upload">
</form>
</body>
</html>
