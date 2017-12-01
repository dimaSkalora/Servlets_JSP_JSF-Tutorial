<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> sql:delete and sql:param tag example </title>
</head>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql"  uri="http://java.sun.com/jsp/jstl/sql" %>
<body>
<sql:setDataSource var="libraryDataSource" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/servlets_jsp_tutorial"
                   user="root"  password="root"/>
<%
    String isbnNo="ISBN1234" ;
%>
<sql:update dataSource="${libraryDataSource}" var="affectedRows">
    delete from books   where isbn = ?;
    <sql:param value="<%= isbnNo %>"/>
</sql:update>
Number of Rows Deleted are :: <c:out value="${affectedRows }"/>
</body>
</html>
