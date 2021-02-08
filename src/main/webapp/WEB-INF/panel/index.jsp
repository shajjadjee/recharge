<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="../assets/css/owl.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />

<!-- <link rel="stylesheet" href="../assets/css/adminlayout2.css"> -->
<title>Online Mobile rechrage</title>

<jsp:include page="fcn.jsp" />
</head>
<body>
	<header>
		<div class="header">
			<nav class="navbar navbar-default navbar-fixed-top affix-top">
				<div class="navbar-header page-scroll">
					<a class="navbar-brand" href="/"><img
						class="hide-in-sticky" src="../assets/images/logo.png"></a>
				</div>
				<a class="navbar-brand" href="/recharge">Recharge</a> <a
					class="navbar-brand" href="#">Operators</a> <a class="navbar-brand"
					href="#">Pricing</a> <a class="btn btn-primary" href="login"
					style="margin-top: 3px;"> SIGN IN </a>
			</nav>
			<nav class="navbar bg-primary navbar-fixed-top affix-top"></nav>
		</div>
	</header>
	<div class="container">
		<div class="row justify-content-center">
			<div id="carouselExampleControls" class="carousel slide"
				data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img class="d-block w-100" height="320px" width="1140px"
							src="../assets/images/bl.jpeg" alt="First slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" height="320px" width="1140px"
							src="../assets/images/ttlk.jpg" alt="Second slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" height="320px" width="1140px"
							src="../assets/images/robi.jpg" alt="Third slide">
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleControls"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleControls"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
	<div class="container">
		<br> <br>
		<div class="card mt-2">
			<div class="card-body" style="background-color: rgb(255, 60, 65)">
				<form class="form-inline" action="/recharge/add" method="post">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
					<div class="form-group mr-2">
						<label for="phone"></label> <input class="form-control"
							type="text" name="phone" id="phone" placeholder="Mobile Number">
					</div>
					<div class="form-group mr-2">
						<label for="operator" class="select-label"></label> <select
							class="form-control" name="operator" id="operator">
							<option value="">Select your Operator</option>
							<option value="Grameenphone">Grameenphone</option>
							<option value="Banglalink">Banglalink</option>
							<option value="Robi">Robi</option>
							<option value="Teletalk">Teletalk</option>
							<option value="Airtel">Airtel</option>
						</select>
					</div>
					<div class="form-group mr-2">
						<label for="simtype" class="select-label"></label> <select
							class="form-control" formcontrolname="type" id="simtype"
							name="simtype">
							<option value="">Select Connection Type</option>
							<option value="prepaid">Prepaid</option>
							<option value="postpaid">Postpaid</option>
							<option value="skitto">Skitto</option>
						</select>
					</div>
					<div class="form-group mr-2">
						<label for="amount"></label> <input class="form-control"
							name="amount" id="amount" maxlength="4" minlength="2" min="0"
							type="number" placeholder="Amount (TK)">
					</div>
					<div class="form-group">
						<button class="btn btn-primary btn-block" type="submit">Recharge</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<br>

	<div class="wrapper">
		<div class="carousel1 owl-carousel">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title"><i class="fas fa-phone-alt"></i> 90 Minutes <i class="fas fa-calendar-day"></i> 7 Days</h5>
					<div class="card-text" style="float: left;">
						<i class="fas fa-calendar-day"></i> 7 Days
					</div>
					<input type="button" onclick="change(57,'Robi','postpaid')" class="btn btn-primary"
						value="TK. 57" style="float: right;" />
				</div>
			</div>
			<div class="card">
				<div class="card-body">
					<h5 class="card-title"><i class="fas fa-phone-alt"></i> 50 Minutes <i class="fas fa-calendar-day"></i> 7 Days</h5>
					<div class="card-text" style="float: left;">
						<i class="fa fa-calendar" aria-hidden="true"></i> 7 Days
					</div>
					<input type="button" onclick="change(54,'Grameenphone','prepaid')" class="btn btn-primary"
						value="TK. 54" style="float: right;" />
				</div>
			</div>
			<div class="card">
				<div class="card-body">
					<h5 class="card-title"><i class="fas fa-globe-asia"></i> 30 GB FOR <i class="fas fa-calendar-day"></i> 30 days</h5>
					<div class="card-text" style="float: left;">
						<i class="fa fa-calendar" aria-hidden="true"></i> 30 Days
					</div>
					<input type="button" onclick="change(344,'Airtel','prepaid')" class="btn btn-primary"
						value="TK. 344" style="float: right;"/>
				</div>
			</div>
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">90 Minutes <i class="fas fa-calendar-day"></i> 7 Days</h5>
					<div class="card-text" style="float: left;">
						<i class="fa fa-calendar" aria-hidden="true"></i> 7 Days
					</div>
					<input type="button" onclick="change(57)" class="btn btn-primary"
						value="57 TK" style="float: right;" />
				</div>
			</div>
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">90 Minutes <i class="fas fa-calendar-day"></i> 7 Days</h5>
					<div class="card-text" style="float: left;">
						<i class="fa fa-calendar" aria-hidden="true"></i> 7 Days
					</div>
					<input type="button" onclick="change(57)" class="btn btn-primary"
						value="57 TK" style="float: right;" />
				</div>
			</div>
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">90 Minutes <i class="fas fa-calendar-day"></i> 7 Days</h5>
					<div class="card-text" style="float: left;">
						<i class="fa fa-calendar" aria-hidden="true"></i> 7 Days
					</div>
					<input type="button" onclick="change(57)" class="btn btn-primary"
						value="57 TK" style="float: right;" />
				</div>
			</div>
			
		</div>
	</div>
	

	<div class="footer-below"
		style="padding: 17px 0; background-color: #043acc; color: white;">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<p>© My recharge . All Rights Reserved.</p>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(".carousel1").owlCarousel({
			margin : 20,
			loop : true,
			autoplay : true,
			autoplayTimeout : 2000,
			autoplayHoverPause : true,
			responsive : {
				0 : {
					items : 1,
					nav : true
				},
				600 : {
					items : 2,
					nav : false
				},
				1000 : {
					items : 3,
					nav : false
				}
				
			}
		});
	</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>
</body>
</html>