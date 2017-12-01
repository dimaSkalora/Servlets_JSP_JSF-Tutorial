<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>fn:escape example</title>
</head>
<body>
Input String with escapeXml :: ${fn:escapeXml('<i>Hello <strong>I am </strong> Input String<i>')}
<br/>
Input String without escapeXml :: ${'<i>Hello <strong>I am </strong> Input String<i>'}
</body>
</html>
