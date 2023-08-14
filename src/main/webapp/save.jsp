<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:maroon;">
<h2 style="text-align: center; color: silver;">ENTER EMPLOYEE DETAILS</h2>
	<form action="saveEmployee">
		<table align="center">
		
			<tr>

				<td>Id :  <input type="text" name="id"
					placeholder="Enter EmployeeId"  ></td>

			</tr> 
			<tr>

				<td>Name :  <input type="text" name="name"
					placeholder="Enter Name" required="Enter your Name" > </td>
			</tr>

			<tr>
				<td>Department:<input type="text" name="department"
					placeholder="Enter Department" ></td>
			</tr>
			<tr>
				<td>Address:<input type="text" name="address"
					placeholder="Enter the Address" ></td>
			</tr>
			<tr>
				<td>Age:<input type="text" name="age"
					placeholder="Enter the Age" ></td>
			</tr>
			<tr>
				<td>Salary:<input type="text" name="salary"
					placeholder="Enter the salary" ></td>
			</tr>
			<tr>
				<td ><input type="submit" style="background-color:teal;"value="save"></td>
			</tr>
		</table>

	</form>

</body> 
</html>
<!-- private int id;
	private String name;
	private String department;
	private String address;
	private int age;
	private double salary; -->