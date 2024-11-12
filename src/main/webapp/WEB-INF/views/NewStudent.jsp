<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Evaluation Form</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<div class="container mt-5">
		<h2 class="mb-4">Student Evaluation Form</h2>
		<form action="savestudentdetail" method="post">


			<!-- Student Details Subform -->
			<h4 class="mt-4">Student Details</h4>

			<div class="form-group">
				<label for="studentFirstName">First Name</label> <input type="text"
					class="form-control" id="studentFirstName"
					name="firstName" required>
			</div>

			<div class="form-group">
				<label for="studentLastName">Last Name</label> <input type="text"
					class="form-control" id="studentLastName"
					name="lastName" required>
			</div>

			<div class="form-group">
				<label for="studentEmail">Email</label> <input type="email"
					class="form-control" id="studentEmail" name="email"
					required>
			</div>

			<div class="form-group">
				<label for="studentMobile">Mobile</label> <input type="text"
					class="form-control" id="studentMobile"
					name="mobile" required>
			</div>

			<div class="form-group">
				<label for="studentBatch">Batch Type</label> <input type="text"
					class="form-control" id="studentBatch" name="batchType"
					required>
			</div>

			<!-- Main Form Fields -->
			<h4>Feedback - Evaluation</h4> 
			<div class="form-group">
				<label for="studentFaculty">Subject</label> <input
					type="text" class="form-control" id="studentFaculty"
					name="subject" required>
			</div>

			<div class="form-group">
				<label for="studentFaculty">Faculty</label>
				<select name="faculty" class="form-control">
					<option>Select Faculty</option>
					<option value="Dhiraj Sir">Dhiraj Sir</option>
					<option value="Alakh Sir">Alakh Sir</option>
					<option value="Rahul Sir">Rahul Sir</option>
					<option value="Samir Sir">Samir Sir</option>
					<option value="MD Sir">MD Sir</option>

				</select>
			</div>



			<div class="form-group">
				<label for="regularity">Regularity</label> <input type="number"
					class="form-control" id="regularity" name="regularity" min="1"
					max="5" required>
			</div>

			<div class="form-group">
				<label for="communication">Communication</label> <input
					type="number" class="form-control" id="communication"
					name="communication" min="1" max="5" required>
			</div>

			<div class="form-group">
				<label for="discipline">Discipline</label> <input type="number"
					class="form-control" id="discipline" name="discipline" min="1"
					max="5" required>
			</div>

			<div class="form-group">
				<label for="testPerformance">Test Performance</label> <input
					type="number" class="form-control" id="testPerformance"
					name="testPerformance" min="1" max="5" required>
			</div>



			<!-- Submit Button -->
			<button type="submit" class="btn btn-primary">Submit
				Evaluation</button>
		</form>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>