<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> sql:query tag example </title>
</head>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql"  uri="http://java.sun.com/jsp/jstl/sql" %>
<body>
<sql:setDataSource var="libraryDataSource" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/servlets_jsp_tutorial"
                   user="root"  password="root"/>
<sql:query dataSource="${libraryDataSource}" var="records">
    select * from books;
</sql:query>
<table border="1" >
    <tr>
        <th>ISBN Number</th>
        <th>Name of Book</th>
        <th>Price in $ </th>
        <th>Author</th>
    </tr>
    <c:forEach var="row" items="${records.rows}">
        <tr>
            <td><c:out value="${row.isbn}"/></td>
            <td><c:out value="${row.name}"/></td>
            <td><c:out value="${row.price}"/></td>
            <td><c:out value="${row.author}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>