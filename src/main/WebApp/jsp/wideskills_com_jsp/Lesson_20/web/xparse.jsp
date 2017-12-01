<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> x:parse tag example </title>
</head>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<h3>Person Data</h3>
<c:set var="xmlData">
<persons>
    <person>
        <name>Joe Bloggs</name>
        <address>United States</address>
        <dob>12-28-1978</dob>
    </person>
    <person>
        <name>Scott tiger</name>
        <address>United Kingdom</address>
        <dob>11-13-1956</dob>
    </person>
</persons>
</c:set>
<x:parse xml="${xmlData}" var="parsedXml"/>
</body>
</html>
