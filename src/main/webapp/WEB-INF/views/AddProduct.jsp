<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div>
<form:form method="post" enctype="multipart/form-data" modelAttribute="Product" action="AddProductToDb" style="width: 20%;margin: auto;">
  <div class="form-group">
    <label>Product Name :</label>
    <form:input path="name" type="text" required="required" placeholder="Product Name" class="form-control" name="product"/>
  </div>
  <div class="form-group">
    <label>Category Name :</label>
	<form:select path="Cat_name" class="form-control" name="product">
	<c:forEach items="${categoriesdata}" var="x">
	
	<option title="${x.getDescription() }"  value="${x.getCat_name()}">${x.getCat_name()}</option>
	
	</c:forEach>
	</form:select>
	
  </div>
  <div class="form-group">
    <label>Price :</label>
    <form:input path="price" type="number"  required="required" placeholder="Price" class="form-control" name="product"/>
  </div>
  <div class="form-group">
    <label>Add Image :</label>
    <input value="Upload" type="file" name="file" >
  </div>
  <div class="form-group">
    <label>Description :</label>
    <form:textarea path="description" rows="5" required="required"  placeholder="Description" class="form-control" cols="4" name="product"></form:textarea>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form:form>
</div>
</body>
</html>