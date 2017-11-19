<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<br>
	<h1 style="margin: auto; width: 80%; text-align: center;">View Product</h1>
	<br>
	<table class="table table-striped" style="margin: auto; width: 80%;">
		<thead>
			<tr>
			<th>Name</th>
			<th>Category</th>
			<th>Price</th>	
			<th>Image</th>
			<th>Description</th>
			</tr>
		</thead>
		<tbody>
		
			<tr>
			<td>${productdata.getName()}</td>
			<td>${productdata.getCat_name()}</td>
			<td>${productdata.getPrice()}</td>
			<td><img src="${productdata.getImageurl()}" style="width: 150px;" ></td>
			<td>${productdata.getDescription()}</td>
			</tr>		
		</tbody>
	</table>
</body>
</html>