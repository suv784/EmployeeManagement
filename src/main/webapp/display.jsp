<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee details</title>
</head>
<body style="background-color:teal;">
<h1 style="text-align: center;color: red;">View Employee Details</h1>
	<table border="2px solid black;" align="center">
		<tr>
			<th>Employee Id</th>
			<th>Employee NAME</th>
			<th>Employee Department</th>
			<th>Employee Address</th>
			<th>Employee Age</th> 
			<th>Employee Salary</th>
			<th>EDIT</th>
			<th>DELETE</th>
		</tr>
		<c:forEach var="e" items="${employee}">
			<tr>
				<td>${e.getId()}</td>
				<td>${e.getName()}</td>
				<td>${e.getDepartment()}</td>
				<td>${e.getAddress()}</td>	
				<td>${e.getAge()}</td>
				<td>${e.getSalary()}</td>
				<td><a href="edit?id=${e.getId()}">EDIT</a></td>
				<td><a href="delete?id=${e.getId()}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
<!-- private int id;
	private String name;
	private String department;
	private String address;
	private int age;
	private double salary; 
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	} -->