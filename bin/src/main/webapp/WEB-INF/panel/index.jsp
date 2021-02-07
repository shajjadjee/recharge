<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<link rel="stylesheet" href="../assets/css/adminlayout2.css">
<title>Online Mobile rechrage</title>

<jsp:include page="fcn.jsp" />
</head>
<body>
	<header>
		<div class="header">
			<nav class="navbar navbar-default navbar-fixed-top affix-top">
				<div class="navbar-header page-scroll">
					<a class="navbar-brand" href="/recharge/top-up"><img
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
			<br> <br>
			<section class="app-download-section p-0">
				<div class="container">
					<div class="row justify-content-center">
						<form action="/recharge/add" method="post">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" /> <label for="phone">Mobile
								Number</label> <input class="form-control" type="text" name="phone"
								id="phone"> <label for="operator" class="select-label">Select
								Operator</label> <select class="form-control" name="operator"
								id="operator">
								<option value="">Select Operator</option>
								<option value="Grameenphone">Grameenphone</option>
								<option value="Banglalink">Banglalink</option>
								<option value="Robi">Robi</option>
								<option value="Teletalk">Teletalk</option>
								<option value="Airtel">Airtel</option>
							</select> <label for="simtype" class="select-label">Select
								Connection Type</label> <select class="form-control"
								formcontrolname="type" id="simtype" name="simtype">
								<option value="">Select Connection Type</option>
								<option value="prepaid">Prepaid</option>
								<option value="postpaid">Postpaid</option>
								<option value="skitto">Skitto</option>
							</select> <label for="amount">Amount (TK)</label> <input
								class="form-control" name="amount" id="amount" maxlength="4"
								minlength="2" min="0" type="number" placeholder="Amount (TK)">
							<button class="btn btn-primary" type="submit">Recharge</button>
						</form>
					</div>
				</div>
			</section>
		</div>
	</div>
	<br>
          <div id= "totalValue">Total price: $500 </div>
          <br>
          <input type="button" onclick="change(54,'Grameenphone','prepaid')" value="54 TK">
          <input type="button" onclick="change(57,'Robi','postpaid')" value="57 TK">
          <input type="button" onclick="location.href='/recharge',change(60,'Robi','prepaid')" value="60 TK">
          <a href="/recharge" onclick="change(58,'Robi','postpaid')">58 TK</a>
          <br><div class="row"><div class="col-sm-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">90 Minutes 7 Days</h5>
						<p class="card-text">
							<i class="fa fa-calendar" aria-hidden="true"></i> 7 Days
						</p>
						<input type="button" onclick="change(57)" class="btn btn-primary" value="57 TK"/>
					</div>
				</div>
		</div>
		<div class="col-sm-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">90 Minutes 7 Days</h5>
						<p class="card-text">
							<i class="fa fa-calendar" aria-hidden="true"></i> 7 Days
						</p>
						<input type="button" onclick="change(57)" class="btn btn-primary" value="57 TK"/>
					</div>
				</div>
		</div>
		<div class="col-sm-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">90 Minutes 7 Days</h5>
						<p class="card-text">
							<i class="fa fa-calendar" aria-hidden="true"></i> 7 Days
						</p>
						<input type="button" onclick="change(57)" class="btn btn-primary" value="57 TK"/>
					</div>
				</div>
		</div></div>
          <div id="offerslide" class="carousel slide" data-ride="carousel">
          
  <div class="carousel-inner">
    <div class="row carousel-item active">
    	<div class="col-sm-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">90 Minutes 7 Days</h5>
						<p class="card-text">
							<i class="fa fa-calendar" aria-hidden="true"></i> 7 Days
						</p>
						<input type="button" onclick="change(57)" class="btn btn-primary" value="57 TK"/>
					</div>
				</div>
		</div>
		<div class="col-sm-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">90 Minutes 7 Days</h5>
						<p class="card-text">
							<i class="fa fa-calendar" aria-hidden="true"></i> 7 Days
						</p>
						<input type="button" onclick="change(57)" class="btn btn-primary" value="57 TK"/>
					</div>
				</div>
		</div>
		<div class="col-sm-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">90 Minutes 7 Days</h5>
						<p class="card-text">
							<i class="fa fa-calendar" aria-hidden="true"></i> 7 Days
						</p>
						<input type="button" onclick="change(57)" class="btn btn-primary" value="57 TK"/>
					</div>
				</div>
		</div>
		
	</div>
    <div class="carousel-item">
      <div class="card" style="width: 18rem;">
					<div class="card-body">
						<h5 class="card-title">30GB 7 Days</h5>
						<p class="card-text">
							<i class="fa fa-calendar" aria-hidden="true"></i> 7 Days
						</p>
						<a href="#" class="btn btn-primary">57 TK</a>
					</div>
				</div>
    </div>
    <div class="carousel-item">
      <div class="card" style="width: 18rem;">
					<div class="card-body">
						<h5 class="card-title">30GB 30 Days</h5>
						<p class="card-text">
							<i class="fa fa-calendar" aria-hidden="true"></i> 7 Days
						</p>
						<a href="#" class="btn btn-primary">649 TK</a>
					</div>
				</div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#offerslide" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    
  </a>
  <a class="carousel-control-next" href="#offerslide" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    
  </a>
</div>
         

	<div class="footer-below">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<p _ngcontent-serverapp-c9="">© My recharge . All Rights
						Reserved.</p>
				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>
</body>
</html>