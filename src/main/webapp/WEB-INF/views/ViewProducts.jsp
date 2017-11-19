<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<Style>
table, th, td {
    border: 1px solid black;
}
</Style>
<body>
<jsp:include page="header.jsp" />  

	<br>
	<h1 style="margin: auto; width: 80%; text-align: center;">View Products</h1>
	<br>	
	<form action="delProducts">
	<div style="margin: auto; width: 80%;">
	<input class="btn btn-danger" Value="Delete Selected" type="submit">
	</div>
	<br>
	<table class="table table-striped" style="margin: auto; width: 80%;">
		<thead>
			<tr>
			<th>Select</th>
			<th>Name</th>
			<th>Category</th>
			<th>Price</th>
			<th>Image</th>
			<th>Description</th>
			<th>View</th>
			<th>Update</th>
			<th>Delete</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${productdata}" var="x">
			<tr>
			<td><input type="checkbox" value="${x.getPid()}" name="SelectedId"></td>
			<td>${x.getName()}</td>
			<td>${x.getCat_name()}</td>
			<td>${x.getPrice()}</td>
			<td><img src="${x.getImageurl()}" style="width: 200px;"></td>
			<td>${x.getDescription()}</td>
			<td><a href="ViewOneProduct/${x.getPid()}" class="btn btn-primary">View</a></td>
			<td><a href="UpdateOneProduct/${x.getPid()}" class="btn btn-success">Update</a></td>
			<td><a href="delete/${x.getPid()}" class="btn btn-danger">Delete</a></td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	</form>
</body>
</html>