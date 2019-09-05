<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<!-- Required meta tags -->
	<meta charset="ISO-8859-1">
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
		crossorigin="anonymous">
	<!-- Custom CSS-->
	<link rel="stylesheet" href="/css/custom.css">

	<title>Hello, world!</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarTogglerDemo01"
			aria-controls="navbarTogglerDemo01" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
			<a class="navbar-brand" href="#"></a> <img src="/img/logo.png" alt="logo">
			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Checking</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">Savings</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">Investments</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">About Us</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">Login/Registration</a>
				</li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>

	<div class="login-form float-left ml-4">
		<form action="/examples/actions/confirmation.php" method="post">
			<h2 class="text-center">Log in</h2>
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Username"
					required="required">
			</div>
			<div class="form-group">
				<input type="password" class="form-control" placeholder="Password"
					required="required">
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary btn-block">Log
					in</button>
			</div>
			<div class="clearfix">
				<label class="pull-left checkbox-inline"><input
					type="checkbox"> Remember me</label> <a href="#" class="pull-right">Forgot
					Password?</a>
			</div>
		</form>
		<p class="text-center">
			<a href="#">Create an Account</a>
		</p>
	</div>

	<div id="carouselExampleControls" class="carousel slide"
		data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="/img/main1.png" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="/img/main2.png" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="/img/main3.png" class="d-block w-100" alt="...">
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



	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>