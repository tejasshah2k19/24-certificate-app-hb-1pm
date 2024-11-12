<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Evaluation List</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<div class="container mt-5">
		<h2 class="mb-4">Evaluation List</h2>
		<table class="table table-bordered table-hover table-responsive">
			<thead class="thead-dark">
				<tr>
					<th>StudentID</th>
					<th> First Name</th>
					<th> Last Name</th>
					<th> Email</th>
					<th> Mobile</th>
					<th> Batch</th>
					<th>Subject</th>
					<th>Faculty</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="evaluation" items="${students}">
					<tr>
						<td>${evaluation.studentId}</td>
						<td>${evaluation.firstName}</td>
						<td>${evaluation.lastName}</td>
						<td>${evaluation.email}</td>
						<td>${evaluation.mobile}</td>
						<td>${evaluation.batchType}</td>
						<td>${evaluation.subject}</td>
						<td>${evaluation.faculty}</td>
						<td>Delete | Edit | View </td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
