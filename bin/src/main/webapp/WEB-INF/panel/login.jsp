<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw=="
	crossorigin="anonymous" />
<link rel="stylesheet" href="./assets/css/login.css" />
<title>Panel Login</title>
</head>
<body>
	<div class="container">
		<div class="d-flex justify-content-center h-100">
			<div class="card">
				<div class="card-header">
					<h3>Log In</h3>
					<div class="d-flex justify-content-end social_icon">
						<span><i class="fa fa-facebook-square"></i></span> <span><i
							class="fa fa-google-plus-square"></i></span> <span><i
							class="fa fa-twitter-square"></i></span>
					</div>
				</div>
				<div class="card-body">
					<form method="POST" action="${contextPath}/login">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fa fa-user"></i></span>
							</div>
							<input type="text" name="username" class="form-control"
								placeholder="username">

						</div>
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fa fa-key"></i></span>
							</div>
							<input type="password" name="password" class="form-control"
								placeholder="password">
						</div>
						<div class="row align-items-center remember">
							<input type="checkbox">Remember Me
						</div>
						<div class="form-group">
							<input type="submit" value="Login"
								class="btn float-right login_btn">
						</div>
						<c:if test='${status.equals("success") }'>
							<div class="alert alert-primary" role="alert">${message}</div>
						</c:if>

						<c:if test='${status.equals("error") }'>
							<div class="alert alert-danger" role="alert">${message}</div>
						</c:if>
					</form>
				</div>
				<div class="card-footer">
					<div class="d-flex justify-content-center links">
						Don't have an account?<a href="/signup">Sign Up</a>
					</div>
					<!-- <div class="d-flex justify-content-center">
					<a href="#">Forgot your password?</a>
				</div> 
				<div class="alert alert-danger" role="alert">
  User account not found!
</div>
				-->

				</div>
			</div>
		</div>

	</div>
	<jsp:include page="layout/footer.jsp" />