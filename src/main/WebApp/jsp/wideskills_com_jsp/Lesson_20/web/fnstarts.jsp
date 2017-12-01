<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>fn:substring after and before example</title>
</head>
<body>
<c:set var="inputString" value="Hello I am Input String"/>
Input String :: ${inputString }
<br/>
Before String 'am' :: ${fn:substringBefore(inputString,'am')}
<br>
After String 'am' :: ${fn:substringAfter(inputString,'am')}
</body>
</html>>
