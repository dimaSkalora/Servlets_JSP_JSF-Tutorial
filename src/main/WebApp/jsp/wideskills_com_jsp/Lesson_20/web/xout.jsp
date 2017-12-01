<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> x:out tag example </title>
</head>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
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
Name of 1st Person is - <x:out select="$parsedXml/persons/person[1]/name" />
<br/>
Address of 1st Person is - <x:out select="$parsedXml/persons/person[1]/address" />
<br/>
DOB of 1st Person is - <x:out select="$parsedXml/persons/person[1]/dob" />
<br/>
Name of 2nd Person is - <x:out select="$parsedXml/persons/person[2]/name" />
<br/>
Address of 2nd Person is - <x:out select="$parsedXml/persons/person[2]/address" />
<br/>
DOB of 2nd Person is - <x:out select="$parsedXml/persons/person[2]/dob" />
</body>
</html>
