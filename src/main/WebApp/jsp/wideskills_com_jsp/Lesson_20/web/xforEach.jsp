<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> x:forEach tag example </title>
</head>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<body>
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
<x:forEach select="$parsedXml/persons/person/name" var="person">
    Person Name: <x:out select="$person" />
    <br/>
</x:forEach>
</body>
</html>
