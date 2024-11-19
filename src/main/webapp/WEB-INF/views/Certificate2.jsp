<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Dashboard</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #ebe6ff;
}

.dashboard-container {
	max-width: 1200px;
	margin: 20px auto;
	padding: 20px;
	border-radius: 8px;
	background-color: #f4f4ff;
}

.header-bar {
	background-color: #6f42c1;
	color: white;
	padding: 15px;
	border-radius: 8px 8px 0 0;
}

.profile-section img {
	width: 80px;
	height: 80px;
	border-radius: 50%;
}

.activities-progress .progress {
	height: 15px;
}

.grading-scale-container {
	background-color: #a259ff;
	color: white;
	padding: 15px;
	border-radius: 8px;
	font-weight: bold;
	text-align: center;
}

.grading-scale-title {
	margin-bottom: 10px;
	font-size: 1.2em;
}

.grading-scale {
	display: flex;
	justify-content: space-between;
	flex-wrap: wrap;
	gap: 15px;
	padding: 0 10px;
}

.activities-container {
	max-width: 300px;
	margin: 20px auto;
	background-color: #f9f9ff;
	padding: 20px;
	border-radius: 8px;
	font-weight: bold;
	color: #6f42c1;
}

.progress-bar-custom {
	background-color: #6f42c1;
}

.activity-title {
	font-weight: bold;
	color: #6f42c1;
}

.performance-container {
	max-width: 400px;
	margin: 20px auto;
	background-color: #f9f9ff;
	padding: 20px;
	border-radius: 8px;
	text-align: center;
}

.chart-title {
	font-weight: bold;
	color: #6f42c1;
}

.circle {
	width: 100px;
	height: 100px;
	border-radius: 50%;
	background-color: #e4e0ff;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 1.5rem;
	color: #6f42c1;
	position: relative;
}

.circle::before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 100px;
	height: 100px;
	border-radius: 50%;
	border: 10px solid #6f42c1;
	clip: rect(0px, ${avgPerformance}px, 100px, 0px); /* Create a half-circle progress */
}    

.grade {
	font-size: 3rem;
	font-weight: bold;
	color: #6f42c1;
}

.description {
	font-size: 0.9rem;
	color: #6f42c1;
}
</style>
</head>
<body>
	<div class="container dashboard-container">
		<!-- Header Section -->
		<div
			class="header-bar justify-content-between align-items-center text-center">
			<h3 class="m-0">Student Evaluation</h3>
			<!-- <nav>
				<a href="#" class="text-white me-3">Home</a> <a href="#"
					class="text-white me-3">Settings</a> <a href="#" class="text-white">My
					Account</a>
			</nav> -->
		</div>

		<!-- Main Content Section -->
		<div class="row mt-3">
			<!-- Profile and Final Score -->
			<div class="col-md-8">
				<div class="card p-3">
					<div class="row">
						<div class="col-md-12">
							<h5 class="activity-title">Student Details</h5>
							<table class="table table-responsive table-bordered bg-white">

								<tbody>
									<tr>
										<th>Name</th>
										<td>${student.firstName}&nbsp;${student.lastName}</td>

										<th>CollegeName</th>
										<td>${student.college == null or student.college.length()==0?"NA":student}</td>

									</tr>

									<tr>
										<th>BatchType</th>
										<td>${student.batchType}</td>
										<th>Evaluation Year</th>
										<td>2024</td>
									</tr>

									<tr>
										<th>Email</th>
										<td>${student.email}</td>
										<th>ContactNum</th>
										<td>${student.mobile}</td>
									</tr>

									<tr>
										<th>Faculty</th>
										<td>${student.faculty}</td>
										<th>Subject</th>
										<td>${student.subject}</td>
									</tr>

								</tbody>
							</table>
						</div>

					</div>
				</div>
			</div>
			<div class="col-md-4 final-score text-left">
				<div class="card p-3">
					<h5 class="activity-title">Final Score</h5>
					<div
						class="position-relative d-flex justify-content-left align-items-center">
						<div class="circle mt-2 position-relative"
							style="width: 100px; height: 100px; border-radius: 50%; background-color: #e4e0ff; display: flex; justify-content: center; align-items: center;">
							<span class="circle"
								style="font-size: 2rem; color: black; font-weight: bold;">${avgPerformance}%</span>
						</div>
						<span class="final-grade ms-3"
							style="font-size: 5rem; color: #6f42c1; font-weight: bold;">B</span>
					</div>
					<div>
						<p class="description text-center">Overall Performance</p>
					</div>
				</div>
			</div>


			<!-- Marks, Historical Performance, and Activities & Conduct Section -->
			<div class="row mt-3">
				<!-- Marks Section -->
				<div class="col-md-8"> 
					<div class="card p-3">
						<h5 class="activity-title">Marks</h5>
						<table class="table table-bordered mt-2">
							<thead>
								<tr>
									<th>Subject</th>
									<th>Score</th> 
								</tr>
							</thead>
							<tbody>
								<tr>
									<th>Regularity</th>
									<td>${student.regularity}</td>
								</tr>

								<tr>
									<th>Communication	</th>
									<td>${student.communication}</td>
								</tr>

								<tr>
									<th>Discipline</th>
									<td>${student.discipline}</td>
								</tr>

								<tr>
									<th>Test Performance	</th>
									<td>${student.testPerformance}</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>

				<!-- Historical Performance Section -->
		<!-- 		<div class="col-md-4">
					<div class="performance-container">
						<h5 class="chart-title">Historical Performance</h5>
						<canvas id="performanceChart"
							style="max-width: 100%; height: 250px;"></canvas>
						<p class="text-muted">Graph Chart</p>
					</div>
				</div> -->

				<!-- Activities & Conduct Section -->
 				<div class="col-md-4">
					<div class="activities-container">
					 
						<h5 class="activity-title">Rating</h5>
 						Regularity
						<div class="mb-4">
							<div class="d-flex justify-content-between">
							</div>
							<div class="progress">
								<div class="progress-bar progress-bar-custom" style="width: ${student.regularity*20}%"></div>
							</div>
 						</div> 
						Communication
						<div class="mb-4">
							<div class="d-flex justify-content-between">
							</div>
							<div class="progress">
								<div class="progress-bar progress-bar-custom" style="width: ${student.communication*20}%"></div>
							</div>
						</div>
 

						Discipline
						<div class="mb-4">
							<div class="d-flex justify-content-between">
								 
							</div>
							<div class="progress">
								<div class="progress-bar progress-bar-custom" style="width: ${student.discipline*20}%"></div>
							</div>
 						</div>

						Test Performance	
						<div class="mb-4">
							<div class="d-flex justify-content-between">
							</div>
							<div class="progress">
								<div class="progress-bar progress-bar-custom" style="width: ${student.testPerformance*20}%"></div>
							</div>
 						</div>
					</div>
				</div>
 
 			<!-- 	<div class="col-md-8">
					<h5 class="activity-title">Total Grade Details</h5>
					<div class="card grade-table p-4">
						<table class="table table-bordered mt-2">
							<thead>
								<tr>
									<th>Final Grade</th>
									<th>A+</th>
									<th>A</th>
									<th>B+</th>
									<th>B</th>
									<th>C</th>
									<th>D</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Count</td>
									<td>2</td>
									<td>6</td>
									<td>8</td>
									<td>5</td>
									<td>2</td>
									<td>1</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div> -->

			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
			<!-- Grade Details Section -->


		</div>




		<!-- Grading Scale Section -->
		<div class="container mt-4">
			<div class="grading-scale-container">
				<div class="grading-scale-title" style="text-align: left;">Grading
					Scale:</div>
				<div class="grading-scale">
					<span>Excellent : 5 </span> 
					<span>Very Good : 4</span> 
					<span> Good : 3</span> 
					<span>Average : 2</span> 
					 <span>Below Average : 1</span> 
					
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
	<script>
		const ctx = document.getElementById('performanceChart')
				.getContext('2d');
		const performanceChart = new Chart(ctx, {
			type : 'line',
			data : {
				labels : [ '1 Sem', '2 Sem', '3 Sem', '4 Sem', '5 Sem' ],
				datasets : [ {
					label : 'Score',
					data : [ 90, 70, 55, 60, 80 ],
					borderColor : '#6f42c1',
					backgroundColor : 'rgba(111, 66, 193, 0.2)',
					pointBackgroundColor : '#6f42c1',
					pointBorderColor : '#fff',
					borderWidth : 2,
					pointRadius : 5,
					tension : 0.3
				} ]
			},
			options : {
				responsive : true,
				scales : {
					y : {
						beginAtZero : true,
						max : 100
					}
				},
				plugins : {
					legend : {
						display : false
					}
				}
			}
		});
	</script>
</body>
</html>