<%@ page import="com.example.demo3.models.Employee" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: monicatobon
  Date: 2/03/23
  Time: 4:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List employees</title>

</head>
<body>
<h1>List employees</h1>
<%
    List<Employee> employeeList = (List)request.getSession().getAttribute("employeeList");
    int cont=1;
    for (Employee employee : employeeList){

%>
        <p><b>User <%=cont%></b></p>
        <p>Nombre <%=employee.getName()%></p>
        <p>Usuario <%=employee.getUsername()%></p>
        <p>------------------------</p>
        <%cont=cont+1;%>

    <%}%>
</body>
</html>
