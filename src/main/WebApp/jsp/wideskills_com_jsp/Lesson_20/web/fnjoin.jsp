<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>fn:length example</title>
</head>
<body>
<c:set var="inputString" value="Hello I am Input String"/>
Input  :: ${inputString}
<br/>
Length of Input String is :: ${fn:length(inputString)}
</body>
</html>
