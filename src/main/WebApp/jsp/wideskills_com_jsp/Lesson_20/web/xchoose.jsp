<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> x:choose tag example </title>
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
        <salary>4500</salary>
    </person>
    <person>
        <name>Scott tiger</name>
        <address>United Kingdom</address>
        <salary>1500</salary>
    </person>
</persons>
</c:set>
<x:parse xml="${xmlData}" var="parsedXml"/>
<x:choose>
    <x:when select="$parsedXml/persons/person[1]/salary > 2000">
        Salary is more than $2000
    </x:when>
    <x:when select="$parsedXml/persons/person[1]/salary < 2000">
        Salary is less than $2000
    </x:when>
    <x:otherwise>
        Cannot calculate
    </x:otherwise>
</x:choose>
</body>
</html>
