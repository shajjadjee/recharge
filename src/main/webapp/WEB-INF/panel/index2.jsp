<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="../assets/css/owl.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
  </head>
  <body>
    <div class="wrapper">
      <div class="carousel owl-carousel">
        <div class="card">
<div class="card-body">
						<h5 class="card-title">90 Minutes 7 Days</h5>
						<p class="card-text">
							<i class="fa fa-calendar" aria-hidden="true"></i> 7 Days
						</p>
						<input type="button" onclick="change(57)" class="btn btn-primary"
							value="57 TK" />
					</div></div>
<div class="card">
<div class="card-body">
						<h5 class="card-title">90 Minutes 7 Days</h5>
						<p class="card-text">
							<i class="fa fa-calendar" aria-hidden="true"></i> 7 Days
						</p>
						<input type="button" onclick="change(57)" class="btn btn-primary"
							value="57 TK" />
					</div></div>
<div class="card">
<div class="card-body">
						<h5 class="card-title">90 Minutes 7 Days</h5>
						<p class="card-text">
							<i class="fa fa-calendar" aria-hidden="true"></i> 7 Days
						</p>
						<input type="button" onclick="change(57)" class="btn btn-primary"
							value="57 TK" />
					</div></div>
<div class="card">
<div class="card-body">
						<h5 class="card-title">90 Minutes 7 Days</h5>
						<p class="card-text">
							<i class="fa fa-calendar" aria-hidden="true"></i> 7 Days
						</p>
						<input type="button" onclick="change(57)" class="btn btn-primary"
							value="57 TK" />
					</div></div>
<div class="card">
<div class="card-body">
						<h5 class="card-title">90 Minutes 7 Days</h5>
						<p class="card-text">
							<i class="fa fa-calendar" aria-hidden="true"></i> 7 Days
						</p>
						<input type="button" onclick="change(57)" class="btn btn-primary"
							value="57 TK" />
					</div></div>
</div>
</div>
<script>
      $(".carousel").owlCarousel({
        margin: 20,
        loop: true,
        autoplay: true,
        autoplayTimeout: 2000,
        autoplayHoverPause: true,
        responsive: {
          0:{
            items:1,
            nav: false
          },
          600:{
            items:2,
            nav: false
          },
          1000:{
            items:3,
            nav: false
          }
        }
      });
    </script>

  </body>
</html>
