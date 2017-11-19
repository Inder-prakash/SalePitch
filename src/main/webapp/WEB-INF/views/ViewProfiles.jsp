<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Profiles</title>
</head>
<Style>
table, th, td {
    border: 1px solid black
}
</Style>
<body>
<jsp:include page="header.jsp" />  

	<br>
	<h1 style="margin: auto; width: 80%; text-align: center;">View Profiles</h1>
	<br>	
	<form action="delProfiles">
	<div style="margin: auto; width: 80%;">
	<input class="btn btn-danger" Value="Delete Selected" type="submit">
	</div>
	<br>
	<table class="table table-striped" style="margin: auto; width: 80%;">
		<thead>
			<tr>
			<th>Select</th>
			<th>Name</th>
			<th>Email</th>
			<th>Password</th>
			<th>Phone</th>
			<th>Address</th>
			<th>View</th>
			<th>Update</th>
			<th>Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${profiledata}" var="x">
			<tr>
			<td><input type="checkbox" value="${x.getId()}" name="SelectedId"></td>
			<td>${x.getUsername()}</td>
			<td>${x.getEmail()}</td>
			<td>${x.getPassword()}</td>
			<td>${x.getPhone()}</td>
			<td>${x.getAddress()}</td>
			<td><a href="ViewOneProfile/${x.getId()}" class="btn btn-primary">View</a></td>
			<td><a href="UpdateOneProfile/${x.getId()}" class="btn btn-success">Update</a></td>
			<td><a href="DeleteOneProfile/${x.getId()}" class="btn btn-danger">Delete</a></td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	</form>
</body>
</html>