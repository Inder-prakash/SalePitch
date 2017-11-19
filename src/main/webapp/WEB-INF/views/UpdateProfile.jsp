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
<body>
<jsp:include page="header.jsp" />  

	<br>
	<h1 style="margin: auto; width: 80%; text-align: center;">Update Profile</h1>
	<br>
	<form:form modelAttribute="profiledata" action="${pageContext.request.contextPath}/UpdateProfileToDB" method="post" style="margin: auto; width: 20%; text-align: center;">
		<form:input path="id" type="hidden"/>
		<form:input path="username" type="text" class="form-control" />
		<br>	
		<form:input path="email" type="text" class="form-control"/>
		<br>
		<form:input path="password" type="text" class="form-control"/>
		<br>
		<form:input path="phone" type="text" class="form-control" />
		<br>
		<form:input path="address" type="text" class="form-control"/>
		<br>
		<input type="submit" value="Update" class="btn btn-primary">
	</form:form>
	
</body>
</html>