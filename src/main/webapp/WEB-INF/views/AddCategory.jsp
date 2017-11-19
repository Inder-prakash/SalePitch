<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div>
<form:form method="post" modelAttribute="Category" enctype="multipart/form-data"   action="AddCategoryToDb" style="width: 20%;margin: auto;">
  <div class="form-group">
    <label>Category Name :</label>
    <form:input path="Cat_name" type="text" required="required" placeholder="Category Name" class="form-control" name="category"/>
  </div>
  <div class="form-group">
    <label>Add Image :</label>
    <input value="Upload" type="file" name="file" >
  </div>
  <div class="form-group">
    <label>Description :</label>
    <form:textarea path="description" required="required" rows="5" placeholder="Description" class="form-control" cols="4" name="category"></form:textarea>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form:form>
</div>
</body>
</html>