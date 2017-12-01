<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>fn:substring example</title>
</head>
<body>
<c:set var="inputString" value="Hello I am Input String"/>
${fn:substring(inputString,6,17)}
</body>
</html>
