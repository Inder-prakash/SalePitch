<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div>
<form:form method="post" action="AddProfileToDb" style="width: 20%;margin: auto;" modelAttribute="Profile">
  <div class="form-group">
    <label>User Name :</label>
    <form:input path="username" type="text" placeholder="User Name" class="form-control" name="profile"/>
  	<form:errors cssStyle="color:red" path="username"/>
  </div>
  
  <div class="form-group">
    <label>Email :</label>
    <form:input path="email" type="text" placeholder="Email" class="form-control" name="email"/>
    <form:errors cssStyle="color:red" path="email"/><span Style="color:red" >${error}</span>
  </div>
  
  <div class="form-group">
    <label>Password :</label>
    <form:input path="password" type="password" placeholder="Password" class="form-control" name="profile"/>
     <form:errors cssStyle="color:red" path="password"/>
  </div>
  
  <div class="form-group">
    <label>Confirm Password :</label>
    <input type="password" placeholder="Confirm Password" class="form-control">
  </div>
  
  <div class="form-group">
    <label>Phone :</label>
    <form:input path="phone" type="text" placeholder="Phone" class="form-control" name="profile"/>
    <form:errors cssStyle="color:red" path="phone"/>
  </div>
  
  <div class="form-group">
    <label>Address :</label>
    <form:textarea path="address" rows="5" cols="5" placeholder="Address" class="form-control" name="profile"></form:textarea>
  </div>
  <form:errors cssStyle="color:red" path="address"/>
  <div style="text-align: center;" class="form-group">
  <button type="submit"  class="btn btn-primary">Submit</button>
  </div>
</form:form>
</div>
</body>
</html>