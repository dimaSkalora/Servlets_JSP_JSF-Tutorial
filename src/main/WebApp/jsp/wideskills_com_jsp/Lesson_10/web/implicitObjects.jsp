<html>
<head>
    <title> Implicit Object Example </title>
</head>
<body>
<% response.getWriter().print("Writing Content using response object") ;%>
<br/>
Port Number (using request object) :: <%= request.getLocalPort() %>
<br/>
Session ID (using session object ) ::<%= session.getId() %>
<br/>
<% out.println("Message getting printed (using out object )") ; %>
<br/>
Init parameter (using application object) :: <%= application.getInitParameter("MyContextParam") %>
<br/>
Init parameter (using config object) :: <%= config.getInitParameter("MyInitParam") %>
<br/>
Class Name (using page object) :: <%= page.getClass() %>
<br/>
<%
    pageContext.setAttribute("pageContextVariable", "Variable Value",PageContext.REQUEST_SCOPE);
%>
Attribute Value (using page context) :: <%= pageContext.getAttribute("pageContextVariable", PageContext.REQUEST_SCOPE)%>
<br/>
</body>
</html>