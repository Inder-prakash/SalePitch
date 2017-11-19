<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
      <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Product</title>
</head>
<body onload="myFunction()">

<jsp:include page="header.jsp" />  

	<br>
	<h1 style="margin: auto; width: 80%; text-align: center;">Update Product</h1>
	<br>
	<form:form enctype="multipart/form-data"  modelAttribute="productdata" action="${pageContext.request.contextPath}/UpdateProductToDB" method="post" style="margin: auto; width: 20%; text-align: center;">
		<form:input path="pid" type="hidden" name="product"/>
		<input type="hidden" value="${productdata.getImagepublicid()}" name="url"> 
		<form:input path="name" type="text" class="form-control" />
		<br>	
		<form:select path="Cat_name" class="form-control" >
		<c:forEach items="${categoriesdata}" var="x">
		<option title="${x.getDescription() }"  value="${x.getCat_name()}">${x.getCat_name()}</option>
		</c:forEach>
		</form:select>	
		<br>	
		<form:input path="price" type="number"  class="form-control" />
		<br>	
		<img  name="file" src="${productdata.getImageurl()}" style="width: 150px;" />
		<br>
		<input type="file" name ="file">
		<br>
		<form:textarea class="form-control" path="description"/>
		<br>
		<input type="submit" value="Update" class="btn btn-primary">
	</form:form>
	
</body>
</html>