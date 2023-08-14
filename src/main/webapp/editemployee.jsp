<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EditEmployeeInfo</title>
</head>
<body style="background-color:teal;">
<h1 style="text-align: center; color: red;">Edit Employee Information</h1>
	<form:form action="update" modelAttribute="emp">
	<table align="center">
	<tr><td>	Employee Id :<form:input path="id" readonly="true"/></td></tr>
	<tr><td>	Name :<form:input path="name"/></td></tr>
	<tr><td>	Department:<form:input path="department"/></td></tr>
	<tr><td>	Address:<form:input path="address"/></td></tr>
	<tr><td>	Age : <form:input path="age"/></td></tr>	
	<tr><td>	Salary: <form:input path="salary"/></td></tr>
		<tr><td >	  <form:button style="background-color: silver;">Update</form:button>	</td></tr>
			  </table>
	</form:form>
</body>
</html>