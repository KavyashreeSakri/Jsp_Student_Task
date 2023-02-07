<%@page import="jsp_Student_task.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	Student student = (Student) request.getAttribute("student");
	%>
	<form action="edit" method="post">
		<table>
			<tr>
				<td>Id :</td>
				<td><input type="number" name="id" placeholder="enter the id"
					value=<%=student.getId()%> readonly="true"></td>
			</tr>
			<tr>
				<td>Name :</td>
				<td><input type="text" name="name" placeholder="enter the name"
					value=<%=student.getName()%>></td>
			</tr>
			<tr>
				<td>FatrherName :</td>
				<td><input type="text" name="fathername"
					placeholder="enter the fathername" value=<%=student.getFathername()%>></td>
			</tr>
			<tr>
				<td>Email :</td>
				<td><input type="email" name="email"
					placeholder="enter the email" value=<%=student.getEmail()%>></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input type="text" name="pwd"
					placeholder="enter the password" value=<%=student.getPassword()%>></td>
			</tr>
			<tr>
				<td>Phone :</td>
				<td><input type="tel" name="phone"
					placeholder="enter the phone" value=<%=student.getPhone()%>></td>
			</tr>
			<tr>
				<td><input type="submit" value="submit"></td>
			</tr>

		</table>

	</form>
</body>
</html>