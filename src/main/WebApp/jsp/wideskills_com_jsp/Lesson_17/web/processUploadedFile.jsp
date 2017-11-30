<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<html>
<head>
    <title>Process Upload File</title>
</head>
<body>
<%@page import="java.io.File"%>
<%@page import="java.util.*,org.apache.commons.fileupload.FileItem"%>
<%
    String fileUploadPath = application.getInitParameter("fileLocation");
    String fileName=  application.getInitParameter("fileName");
    ServletFileUpload uploader= new ServletFileUpload(new DiskFileItemFactory());
    List<FileItem>fileItemsList = uploader.parseRequest(request);
    Iterator<FileItem>fileItemsIterator = fileItemsList.iterator();
    while(fileItemsIterator.hasNext())
    {
        FileItemfileItem = fileItemsIterator.next();
        longsizeInBytes= fileItem.getSize();
        File file = new File(fileUploadPath+File.separator+fileName);
        fileItem.write(file);
        String message = fileName + "(" + sizeInBytes + " Bytes) has been uploaded at " + fileUploadPath + "successfully !!" ;
        request.setAttribute("message", message);
    }
    getServletContext().getRequestDispatcher("/response.jsp").forward(
            request, response);
%>
</body>
</html>
