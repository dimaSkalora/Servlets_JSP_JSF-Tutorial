<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>fn : startsWith and endsWith example</title>
</head>
<body>
<c:set var="inputString" value="Hello I am Input String"/>
Input  :: ${inputString}
<br/>
Is String starts with 'Hello' :: ${fn:startsWith(inputString,'Hello')}
<br/>
Is String ends with 'String' :: ${fn:endsWith(inputString,'String')}
</body>
</html>
