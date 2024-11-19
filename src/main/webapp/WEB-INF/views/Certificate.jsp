<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Report Card</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-color: #eae6ff;
}

.container {
	background-color: #ffffff;
	border-radius: 15px;
	padding: 20px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.header, .footer {
	background-color: #9171fa;
	padding: 10px;
	border-radius: 10px;
	color: white;
}

.header h3 {
	font-size: 1.5rem;
}

.progress {
	height: 1.5rem;
}

.bg {
	background-color: #f9f9ff;
}

.tbl {
	border-radius: 15px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	color: #4e4ebd;
	align-items: center;
}

.final-score-card {
	background-color: #f9f9ff;
	border-radius: 15px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	color: #4e4ebd;
	display: flex;
	align-items: center;
	justify-content: start;
}

.grade-info h1 {
	font-size: 3rem;
	font-weight: bold;
}

.grade-info p {
	font-size: 0.9rem;
	color: #6c757d; /* Muted gray color */
	max-width: 180px; /* To limit width and wrap text nicely */
}

.student-details {
	background-color: #f9f9ff;
	border-radius: 15px;
	padding: 20px;
	display: flex;
	align-items: center;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.student-details h5 {
	font-size: 1.1rem;
	color: #2e2f48;
	font-weight: bold;
	margin-bottom: 15px;
}

.student-img {
	width: 80px;
	height: 80px;
	border-radius: 50%;
	margin-right: 20px;
}

.details-row {
	display: flex;
	flex-wrap: wrap;
}

.detail-item {
	flex: 1 1 50%;
	font-size: 0.9rem;
	color: #555;
	margin-bottom: 5px;
}

.detail-item strong {
	color: #2e2f48;
}
</style>
</head>
<body>

	<div class="container mt-5 mb-5">
		<!-- Header Section -->
		<div class="row">
			<!-- <div  class="col-md-2">
				<img src="royal.png" height="80px" width="200px" />
			</div> -->
			<div class="header text-center mb-5 pt-3">
				<h3>Student Evaluation Report</h3>
			</div>
		</div>


		<!-- Student Details -->
		<div class="row">
			<!-- 			<div class="col-md-6">
				<h5>Student Details</h5>

				<p>
					<strong>Student Name:</strong> Neha Verma
				</p>

				<p>
					<strong>Batch:</strong> 191
				</p>

				<p>
					<strong>Faculty:</strong> Jennifer
				</p>
				<p>
					<strong>Subject:</strong> 2020-2023
				</p>
				<p>
					<strong>Email:</strong> Final Year
				</p>
			</div>
			 -->

			<div class="col-md-9">
				<div class="student-details">
					<!-- <img src="https://via.placeholder.com/80" alt="Student Photo"
					class="student-img"> -->
					<div class="pb-2 ">
						<h5>Student Details</h5>
						<div class="details-row">
							<div class="detail-item">
								<strong>Student Name:</strong>
								${student.firstName}&nbsp;${student.lastName}
							</div>
							<div class="detail-item">
								<strong>Batch:</strong> ${student.batchType }
							</div>
							<div class="detail-item">
								<strong>Faculty:</strong> ${student.faculty }
							</div>
							<div class="detail-item">
								<strong>Subject:</strong> ${student.subject }
							</div>
							<div class="detail-item">
								<strong>Email:</strong> ${student.email }
							</div>
							<div class="detail-item">
								<strong>ContactNum:</strong> ${student.mobile }
							</div>
							<div class="detail-item">
								<strong>College:</strong> NA
							</div>
							<div class="detail-item">
								<strong>Evaluation Year:</strong>
								<%=Calendar.getInstance().get(Calendar.YEAR)%>
							</div>

						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3 text-center">
				<div class="final-score-card p-3 d-flex align-items-center">
					<div class="text-center me-3">
						<h5>Final Score:</h5>
						<div style="position: relative; display: inline-block;">
							<canvas id="finalScoreChart" width="100" height="100"></canvas>
							<div id="percentage-text"
								style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); font-size: 1.5rem; font-weight: bold; color: #4e4ebd;">
								${avgPerformance}%</div>
						</div>
					</div>
					<div class="grade-info text-center ms-3">
						<h1 class="display-4 text-primary">${grade}</h1>
						<p class="text-muted mt-1">Final grade based on Overall
							Performance.</p>
					</div>
				</div>

			</div>

			<!-- Marks Section -->
			
			<div class="row">
				<div class="col-md-6">
							<h5 class="mt-4">Score</h5>
			<div class="final-score-card pt-3">
				<table class="table table-bordered rounded">
					<thead class="">
						<tr>
							<th>Subjects</th>
							<th>Score</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Regularity</td>
							<td>${student.regularity}</td>
						</tr>
						<tr>
							<td>Communication</td>
							<td>${student.communication}</td>
						</tr>
						<tr>
							<td>Discipline</td>
							<td>${student.discipline}</td>
						</tr>
						<tr>
							<td>Test Performance</td>
							<td>${student.testPerformance}</td>
						</tr>

					</tbody>
				</table>
			</div>

				
				</div>
				<div class="col-md-6">
				
				</div>

			</div>


			<!-- Historical Performance Chart (Placeholder) -->
			<!-- 	<h5 class="mt-4">Historical Performance</h5>
			<div class="card mb-4">
				<div class="card-body">
					<canvas id="performanceChart"></canvas>
				</div>
			</div> -->

			<!-- Activities & Conduct -->
			<!-- <h5>Activities & Conduct</h5>
			<div class="row">
				<div class="col-md-6">
					<p>
						<strong>Attentiveness</strong>
					</p>
					<div class="progress mb-2">
						<div class="progress-bar" style="width: 91%;">A (91%)</div>
					</div>

					<p>
						<strong>Punctuality</strong>
					</p>
					<div class="progress mb-2">
						<div class="progress-bar bg-success" style="width: 85%;">B
							(85%)</div>
					</div>

					<p>
						<strong>Neat and Orderly</strong>
					</p>
					<div class="progress mb-2">
						<div class="progress-bar bg-info" style="width: 97%;">A+
							(97%)</div>
					</div>
				</div>
				<div class="col-md-6">
					<p>
						<strong>Extracurriculars</strong>
					</p>
					<div class="progress mb-2">
						<div class="progress-bar bg-warning" style="width: 87%;">B+
							(87%)</div>
					</div>

					<p>
						<strong>Conduct</strong>
					</p>
					<div class="progress mb-2">
						<div class="progress-bar bg-danger" style="width: 87%;">B+
							(87%)</div>
					</div>
				</div>
			</div>
 -->
			<!-- Grading Scale -->
			<!-- 		<div class="footer mt-4 text-center">
				<p>Grading Scale: A+ (100-96), A (95-91), B+ (90-86), B (85-81),
					C (80-76), D (75 Below)</p>
			</div> -->
		</div>
	</div>

	<!-- Bootstrap and Chart.js Scripts -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

	<script>
		const ctx = document.getElementById('finalScoreChart').getContext('2d');
		new Chart(ctx, {
			type : 'doughnut',
			data : {
				datasets : [ {
					data : [ ${avgPerformance}, ${100-avgPerformance} ], // 82% score, 18% remaining
					backgroundColor : [ '#4e4ebd', '#e6e6ff' ],
					borderWidth : 0
				} ]
			},
			options : {
				cutout : '82%',
				plugins : {
					legend : {
						display : false
					},
					tooltip : {
						enabled : false
					}
				}
			}
		});
		
		
		
		//performanceChart
		
		
(async function() {
  const data = [
    { year: "Regularity", count: ${student.regularity} },
    { year: "Communication", count: ${student.communication} },
    { year: "Discipline", count: ${student.discipline} },
    { year: "Test Performance", count:${student.testPerformance} }
  ];
		  new Chart(
    document.getElementById('performanceChart'),
    {
      type: 'bar',
      data: {
        labels: data.map(row => row.year),
        
        datasets: [
          {
            label: 'Performance out of 5',
            data: data.map(row => row.count),
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(255, 205, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)'
                ],
                borderColor: [
                    'rgb(255, 99, 132)',
                    'rgb(255, 159, 64)',
                    'rgb(255, 205, 86)',
                    'rgb(75, 192, 192)'
                  ],
                  borderWidth: 1,
                  barThickness: 90    
          }
        ]
      } 
     
    }
  );
})();
		
		
		</script>
</body>
</html>
