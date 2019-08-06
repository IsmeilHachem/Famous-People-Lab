<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/sketchy/bootstrap.min.css"/>
</head>
<body>
<div class="container">
	<h1>Complete Innovators</h1>
	
	<table>
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Innovation</th>
			<th>Year</th>
		<tr>
		
		<c:forEach items="${list}" var="person">
		
			<tr>
				<td>${person.firstName}</td>
				<td>${person.lastName}</td>
				<td>${person.innovation}</td>
				<td>${person.year}</td>
			</tr>
			
		</c:forEach>
	</table>
	
	<br>
	<br>
<!-- 	<a href="/">Visit Tiny People</a>
 -->	<a href="/"><button type="button" class="btn btn-success">Visit Tiny People</button></a>
	</div>
</body>
</html>