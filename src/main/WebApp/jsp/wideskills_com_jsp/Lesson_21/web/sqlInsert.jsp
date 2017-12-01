<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> sql:insert tag example </title>
</head>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql"  uri="http://java.sun.com/jsp/jstl/sql" %>
<body>
<sql:setDataSource var="libraryDataSource" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/servlets_jsp_tutorial"
                   user="root"  password="root"/>
<sql:update dataSource="${libraryDataSource}" var="affectedRows">
    insert into books values
    ('ISBN1234', 'JSP Tutorial', '124.3','Joe Bloggs');
</sql:update>
Number of Rows Inserted are :: <c:out value="${affectedRows }"/>
</body>
</html>
