<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> sql:update tag example </title>
</head>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql"  uri="http://java.sun.com/jsp/jstl/sql" %>
<body>
<sql:setDataSource var="libraryDataSource" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/servlets_jsp_tutorial"
                   user="root"  password="root"/>
<sql:update dataSource="${libraryDataSource}" var="affectedRows">
    update books set name='Advanced JSP Tutorial' where isbn = 'ISBN1234'
</sql:update>
Number of Rows Updated are :: <c:out value="${affectedRows }"/>
</body>
</html>
