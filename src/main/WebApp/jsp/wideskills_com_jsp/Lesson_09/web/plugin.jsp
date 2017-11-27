<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP Plugin </title>
</head>
<body>
<jsp:plugin
        type="applet"
        code="com.sample.jsp.tutorial.SampleApplet.class"
        codebase="html">
    <jsp:params>
        jsp:param name="message" value="This text will be passed to applet " />
    </jsp:params>
    <jsp:fallback>
        <p>Could not load applet!</p>
    </jsp:fallback>
</jsp:plugin>
</body>
</html>
