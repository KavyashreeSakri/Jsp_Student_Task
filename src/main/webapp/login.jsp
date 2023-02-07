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
	String message = (String) request.getAttribute("message");
	if(message!=null){
	%>
	
	<%=message%>

	<%} %>
	<form action="login" method="post">
		<table>
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
				<td><input type="submit" value="login"></td>
			</tr>



		</table>
	</form>

</body>
</html>