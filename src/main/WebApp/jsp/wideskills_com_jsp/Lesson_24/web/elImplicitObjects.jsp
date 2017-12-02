<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> EL Implicit Objects  </title>
</head>
<%@ page import="java.util.*" %>
<%@ page import="jsp.wideskills_com_jsp.lesson_24.Fruit" %>
<body>
<%
    Fruit fruit = new Fruit();
    fruit.setColor("Red");
    fruit.setName("Apple");
    request.setAttribute("fruits",fruit);
    List<String> tutorial = new ArrayList<String>();
    tutorial.add("JSP");
    tutorial.add("Servlets");
    pageContext.setAttribute("tutorials", tutorial);
%>
<strong>Dot Notation Example:</strong> ${requestScope.fruits.color}
<br><br>
<strong>List EL Example:</strong> ${tutorials[1]}
<br><br>
<strong>Header information EL Example:</strong> ${header["user-agent"]}
<br><br>
<strong>Param EL Example:</strong> ${param["query"]}
<br><br>
<strong>pageContext EL Example:</strong> HTTP Method is ${pageContext.request.method}
<br><br>
<strong>Context param EL Example:</strong> ${initParam.Bonus}
<br><br>
</body>
</html>
