<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>File Upload Example using Apache commons File Upload Utility </title>
</head>
<body>
<form action="processUploadedFile.jsp" method="post"
      enctype="multipart/form-data">
    Select File to Upload:<input type="file" name="fileName"><br>
    <input type="submit" value="Upload">
</form>
</body>
</html>
