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
	<h1 style="margin: auto; width: 80%; text-align: center;">Login History</h1>
	<br>	
	<div style="margin: auto; width: 80%;">
	</div>
	<br>
	<table class="table table-striped" style="margin: auto; width: 80%;">
		<thead>
			<tr>
			<th>Name</th>
			<th>Password</th>
			<th>Status</th>
			<th>LogIn On</th>
			<th>LogOut On</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${logindata}" var="x">
			<tr>
			<td>${x.getUsername()}</td>
			<td>${x.getPassword()}</td>
			<c:choose>
			<c:when test="${x.getStatus()=='Valid'}">
			<td style="color: Green; font-weight: bold; ">${x.getStatus()}</td>
			</c:when>
			<c:otherwise>
			<td style="color: Red; font-weight: bold; ">${x.getStatus()}</td>
			</c:otherwise>
			</c:choose>
			<td>${x.getLogintime()}</td>
			<td>${x.getLogouttime()}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>