<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Student Manager</title>
		
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
	<style>
		a {color: #000;}
		a:hover {color: #f00;}
		span:hover {color: #f00;}
	</style>
</head>
<body>
	<jsp:include page="../views/fragments/header.jsp"></jsp:include>
	<div class="container">
	<br>
		<h1>
			Students  
		</h1>
		<table class="table table-hover">
			<tbody>
				<tr>
					<th>First Name</th><th>Last Name</th><th>UID</th><th>Phone</th>
				</tr>
				<tr>
					<td>
						<a href="<spring:url value="/student/add"/>"> <span title="Add new student">Add new </span>&nbsp;</a>
						<a href="<spring:url value="/student/add"/>"><span class="ion-plus-round" title="Add new student"></span></a>
					</td>
					<td></td><td></td><td></td>
				</tr>
				<c:forEach items="${students}" var="student">
					<tr>
						<td>${student.firstname }</td>
						<td>${student.lastname }</td>
						<td>${student.u_id }</td>
						<td>${student.phone }</td>
						<td>
							<div style="height:100%; width:100%">
								<a href="<spring:url value="/student/delete/${student.u_id }"/>">
									<span class="ion-ios-trash" title="Delete student"></span>
								</a>
							</div>
						</td>
					</tr>
				</c:forEach>
			</tbody> 
		</table>
	</div>
</body>
</html>