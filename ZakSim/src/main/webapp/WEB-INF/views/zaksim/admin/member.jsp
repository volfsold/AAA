<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ZakSim admin</title>
<style>
@font-face {
	font-family: Dohyeon;
	src: url('/resources/fonts/BMDOHYEON_ttf.ttf');
}
</style>

<style>
body {
	font-family: "Lato", sans-serif;
}

/* Fixed sidenav, full height */
.sidenav {
	height: 100%;
	width: 250px;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 0;
	background-color: white;
	overflow-x: hidden;
	padding-top: 20px;
	border-right: 2px solid #ccc;
}

/* Style the sidenav links and the dropdown button */
.sidenav a, .dropdown-btn {
	padding: 6px 8px 6px 16px;
	text-decoration: none;
	font-family: Dohyeon !important;
	font-size : 20px;
	font-weight: 300;
	color: #818181;
	display: block;
	border: none;
	background: none;
	width: 100%;
	text-align: left;
	cursor: pointer;
	outline: none;
	font-size: 20px;
}

/* On mouse-over */
.sidenav a:hover, .dropdown-btn:hover {
	color: #8A0303;
	text-decoration: underline;
}

/* Main content */
.main {
	margin-left: 270px;
	margin-top: 150px;
/* 	font-size: 20px; /* Increased text to enable scrolling */ */
	padding: 0px 10px;
}

/* Add an active class to the active dropdown button */
.active {
	color: #8A0303;
}

/* Dropdown container (hidden by default). Optional: add a lighter background color and some left padding to change the design of the dropdown content */
.dropdown-container {
	display: none;
	background-color: white;
	padding-left: 8px;
}

/* Optional: Style the caret down icon */
.fa-caret-down {
	float: right;
	padding-right: 8px;
}

/* Some media queries for responsiveness */
@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
	.sidenav a {
		font-size: 18px;
	}
}

.sidenav-a {
	margin-bottom: 10px;
}
</style>

<style>

.btn-zaksim {
	background-color: #8A0303;
	color: white;
}

</style>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="https://static.pingendo.com/bootstrap/bootstrap-4.1.3.css">

<!-- font awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">

</head>
<body>

<!-- navbar -->
	<nav class="navbar navbar-expand-lg fixed-top" style="background-color: #8A0303;">
		<a href="" class="btn" style="font-size: xx-large; font-weight: bold; color: white;">ZakSim</a>
		<div class="collapse navbar-collapse justify-content-end">
			<a  href="/zaksim/login" style="font-weight: bold; color: white;">LOGOUT</a>
		</div>
	</nav>
<!-- navbar -->
	
	


<!-- sidenav -->
	<div class="sidenav" style="margin-top: 50px;">
		<div class="row" style="margin-top: 50px;">
			<div class="col-2"></div>
				<div class="col-8">
				<img class="img-fluid d-block rounded-circle" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg" >
				</div>
				<div class="col-2"></div>		
		</div>
		<div class="row text-center" style="margin-top: 15px; margin-bottom: 80px;">
			<div class="col-12"><p>ID or Name</p></div>
		</div>
		<a class="sidenav-a" href="">회원 관리</a>
		<a class="sidenav-a" href="">결제 관리</a>
		<button class="dropdown-btn">
			통계 / 그래프 <i class="fa fa-caret-down"></i>
		</button>
		<div class="dropdown-container">
			<a href="#">회원</a> <a href="#">도전</a> <a href="#">수익</a>
		</div>
	</div>
<!-- sidenav -->

	


	<div class="container-fluid">
		<div class="main">
		
			<div class="row justify-content-between">
				<div class="col-1"></div>
				<div class="col-1">
					<button class="btn btn-zaksim rounded" type="button" >계정 정지</button>
				</div>
				<div class="col-7"></div>
				<div class="col-2">
					<div class="row">
						<div class="row-6">
							<div class="btn-group">
					            <button class="btn btn-outline-danger dropdown-toggle" data-toggle="dropdown"> Dropdown </button>
					            <div class="dropdown-menu"> <a class="dropdown-item" href="#">Action</a>
					              <div class="dropdown-divider"></div> <a class="dropdown-item" href="#">Separated link</a>
					          </div>
							</div>
						</div>
						<div class="row-6">
							<div class="btn-group">
					            <button class="btn btn-outline-danger dropdown-toggle" data-toggle="dropdown"> Dropdown </button>
					            <div class="dropdown-menu"> <a class="dropdown-item" href="#">Action</a>
					              <div class="dropdown-divider"></div> <a class="dropdown-item" href="#">Separated link</a>
					          </div>
							</div>
						</div>
						<div class="row-6"></div>
					</div>
				</div>
				<div class="col-1"></div>
			</div>
			
			<div class="row" style="margin-top: 15px;">
				<div class="col-1"></div>
				<div class="col-10">
					<table class="table">
						<thead>
							<tr>
								<th>#</th>
								<th>First Name</th>
								<th>Last Name</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">1</th>
								<td>Mark</td>
								<td>Otto</td>
							</tr>
							<tr>
								<th scope="row">2</th>
								<td>Jacob</td>
								<td>Thornton</td>
							</tr>
							<tr>
								<th scope="row">3</th>
								<td>Jacob</td>
								<td>Thornton</td>
							</tr>
							<tr>
								<th scope="row">4</th>
								<td>Jacob</td>
								<td>Thornton</td>
							</tr>
							<tr>
								<th scope="row">5</th>
								<td>Jacob</td>
								<td>Thornton</td>
							</tr>
							<tr>
								<th scope="row">6</th>
								<td>Jacob</td>
								<td>Thornton</td>
							</tr>
							<tr>
								<th scope="row">7</th>
								<td>Jacob</td>
								<td>Thornton</td>
							</tr>
							<tr>
								<th scope="row">8</th>
								<td>Jacob</td>
								<td>Thornton</td>
							</tr>
							<tr>
								<th scope="row">9</th>
								<td>Jacob</td>
								<td>Thornton</td>
							</tr>
							<tr>
								<th scope="row">10</th>
								<td>Jacob</td>
								<td>Thornton</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-1"></div>
			</div>
		
		</div>
	</div>



	<script>
		/* When the user scrolls down, hide the navbar. When the user scrolls up, show the navbar */
		var prevScrollpos = window.pageYOffset;
		window.onscroll = function() {
			var currentScrollPos = window.pageYOffset;
			if (prevScrollpos > currentScrollPos) {
				document.getElementById("navbar").style.top = "0";
			} else {
				document.getElementById("navbar").style.top = "-50px";
			}
			prevScrollpos = currentScrollPos;
		}

		/* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
		var dropdown = document.getElementsByClassName("dropdown-btn");
		var i;

		for (i = 0; i < dropdown.length; i++) {
			dropdown[i].addEventListener("click", function() {
				this.classList.toggle("active");
				var dropdownContent = this.nextElementSibling;
				if (dropdownContent.style.display === "block") {
					dropdownContent.style.display = "none";
				} else {
					dropdownContent.style.display = "block";
				}
			});
		}
	</script>


	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</body>
</html>