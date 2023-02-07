<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="signup" method="post">
		<table>
			<tr>
				<td>Name :</td>
				<td><input type="text" name="name" placeholder="enter the name"></td>
			</tr>
			<tr>
				<td>FatrherName :</td>
				<td><input type="text" name="fathername"
					placeholder="enter the fathername"></td>
			</tr>
			<tr>
				<td>Email :</td>
				<td><input type="email" name="email"
					placeholder="enter the email"></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input type="text" name="pwd"
					placeholder="enter the password"></td>
			</tr>
			<tr>
				<td>Phone :</td>
				<td><input type="tel" name="phone"
					placeholder="enter the phone"></td>
			</tr>
			<tr>
				<td><input type="submit" value="submit"></td>
			</tr>

		</table>

	</form>
</body>
</html>