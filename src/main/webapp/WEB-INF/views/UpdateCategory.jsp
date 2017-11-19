<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
      <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Category</title>
</head>
<body>
<jsp:include page="header.jsp" />  

	<br>
	<h1 style="margin: auto; width: 80%; text-align: center;">Update Category</h1>
	<br>
	<form:form enctype="multipart/form-data" modelAttribute="categoriesdata" action="${pageContext.request.contextPath}/UpdateCategoryToDB" method="post" style="margin: auto; width: 20%; text-align: center;">
		<form:input path="cid" type="hidden" />
		<input type="hidden" value="${categoriesdata.getImagepublicid()}" name="url"> 
		<form:input path="Cat_name" type="text"  class="form-control" />
		<br>
		<img  name="file" src="${categoriesdata.getImage()}" style="width: 150px;" />
		<br>
		<input type="file" name ="file">
		<br>
		<form:textarea path="description"   class="form-control" />
		<br>
		<input type="submit" value="Update" class="btn btn-primary">
	</form:form>
	
</body>
</html>