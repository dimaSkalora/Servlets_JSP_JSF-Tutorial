<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>fn:indexOf example</title>
</head>
<body>
<c:set var="inputString" value="Hello I am Input String"/>
<c:set var="subString" value="am" />
<c:set var="example1" value="${fn:indexOf(inputString, subString)}" />
<c:set var="example2" value="${fn:indexOf(inputString, 'Am')}" />
Index of String '${subString}'  in ${inputString} is  <c:out value="${example1}"/>
<br/>
Index of String 'Am'  in ${inputString} is  <c:out value="${example2}"/>
</body>
</html>
