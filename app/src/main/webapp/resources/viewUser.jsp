<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="dao.UserDAOImpl"%>
<%@page import="model.User"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<title>Users</title>
<style>
h1 {
	text-align: center;
	margin: 20px;
	padding: 20px;
	background-color: #E8D1E9;
}

container {
	padding: 10px;

	margin-left:10px;
	margin-right:10px;
	text-align: center;
	
}

body {
	font-family: Arial, Helvetica, sans-serif;
}

table {
padding: 10px;
	
margin-left:20px;
margin-right:20px;
	border-collapse: collapse;
	width: 95%;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f5ecf6;
}

x {
	text-align: center;
}
</style>
</head>

<body>
<form action="/app/viewUsers">

<h1>My Friends</h1>
		<%
	UserDAOImpl uImpl = new UserDAOImpl();
		List<User> userlist=	uImpl.view();;
	
	%>
	<div class="container">
	<table class="table table-bordered" width:"95%">
		<%
		if(userlist!=null){
			
		%>
	<br>
	<br>
		<tr>
			<th>User ID</th> 
			<th>Username</th> 
			
			<th>Email</th> 
               
			
			
		</tr>

		<%
			for (User u : userlist) {
		%>
		<tr>
			<td><%=u.getUid()%></td> 
			<td><%=u.getUsername()%></td>
		
 			<td><%=u.getEmail()%></td>
			
			
			
		</tr>
		<%
			}
			}
		%>
	</table>
	
		<jsp:include page="footer.jsp"></jsp:include>
		</div>

</form>
</body>
</html>