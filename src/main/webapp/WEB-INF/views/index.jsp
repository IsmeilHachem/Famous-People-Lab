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
	<h1>Tiny Inventors</h1>
	
	<table>
		<tr>
			<th>Name</th>
			<th>Invention</th>
			<th>Year</th>
		<tr>
		
		<c:forEach items="${list}" var="person">
		
			<tr>
				<td>${person.name}</td>
				<td>${person.invention}</td>
				<td>${person.year}</td>
			</tr>
			
		</c:forEach>
	</table>
	<br>
	<br>
 	<a href="/complete"><button type="button" class="btn btn-danger">Visit Larger People</button></a>
	</div>
</body>
</html>