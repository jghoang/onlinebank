<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Load an icon library to show a hamburger menu (bars) on small screens -->
<link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.css" />
<link rel="stylesheet" href="/css/styles.css">
<style type="text/css">
.cards {
    text-align: center;
}

.card {
	background-color: #ffffff;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	width: 270px;
	text-align: center;
	margin-right: 5px;
	padding-bottom: 10px;
    display: inline-block;
}

.title {
	color: grey;
	font-size: 18px;
}

.card a {
	text-decoration: none;
	font-size: 22px;
	color: black;
}

.card a:hover {
	opacity: 0.7;
}
</style>
<title>Merit America Online Bank</title>
</head>

<body>
    <div class="topnav" id="myTopnav">
        <a href="/" id="logo" target="_blank"><img src="/img/logo.png"
            alt="logo"></a> <a href="/">Home</a> <a href="/about"
            class="active">About Us</a> <a href="/checking">Checking</a> <a
            href="/savings">Savings</a> <a href="/invest">Investments</a> <a
            href="/newUser">Sign Up</a> <a href="/showUser" class="login">Login</a>
        <div class="login-container">
            <form action="/showUser" method="get">
                <input type="text" placeholder="Username" name="username">
                <input type="password" id="password" name="password"
                    placeholder="Password" /> <input type="hidden"
                    name="${_csrf.parameterName}" value="${_csrf.token}" />
                <button type="submit">Login</button>
            </form>
        </div>
        <a href="javascript:void(0);" class="icon" onclick="myFunction()"> <i
            class="fa fa-bars"></i>
        </a>
    </div>

    <div class="row">
        <div class="col-12 col-s-12">
            <div class="header" style="text-align: center; font-size: 20px">
                <h1>Meet Team 3!</h1>
                <p>
                    We created this mock online banking website for a group
                    project. <br> [4-weeks of working hard or hardly
                    working] <br>Please visit our profiles on GitHub &
                    LinkedIn! <br> <i class="far fa-laugh-wink"></i>
                </p>
            </div>
            <div class="cards">
                <div class="card">
                    <img src="/img/jeff.jpeg" alt="John" style="width: 100%">
                    <h1>Jeff</h1>
                    <p class="title">Developer</p>
                    <a href="https://github.com/Jeffhela"><i
                        class="fab fa-github-alt"></i></a> <a
                        href="https://www.linkedin.com/in/jeff-musunza/"><i
                        class="fab fa-linkedin"></i></a>
                </div>
    
                <div class="card">
                    <img src="/img/reza.jpeg" alt="John" style="width: 100%">
                    <h1>Reza</h1>
                    <p class="title">Developer</p>
                    <a href="https://github.com/rzjrh"><i
                        class="fab fa-github-alt"></i></a> <a
                        href="https://www.linkedin.com/in/reza-akhlaqi/"><i
                        class="fab fa-linkedin"></i></a>
    
                </div>
    
                <div class="card">
                    <img src="/img/ricky.jpeg" alt="John" style="width: 100%">
                    <h1>Ricky</h1>
                    <p class="title">Developer</p>
                    <a href="https://github.com/wongricky"><i
                        class="fab fa-github-alt"></i></a> <a
                        href="https://www.linkedin.com/in/wong-ricky/"><i
                        class="fab fa-linkedin"></i></a>
    
                </div>
    
                <div class="card">
                    <img src="/img/jon.jpeg" alt="John" style="width: 100%">
                    <h1>Jonatan</h1>
                    <p class="title">Developer</p>
                    <a href="https://github.com/jguadamuz"><i
                        class="fab fa-github-alt"></i></a> <a
                        href="https://www.linkedin.com/in/jguadamuz/"><i
                        class="fab fa-linkedin"></i></a>
    
                </div>
    
                <div class="card">
                    <img src="/img/jen.jpg" alt="John" style="width: 100%">
                    <h1>Jennifer</h1>
                    <p class="title">Developer</p>
                    <a href="https://github.com/jghoang"><i
                        class="fab fa-github-alt"></i></a> <a
                        href="https://www.linkedin.com/in/jenh7/"><i
                        class="fab fa-linkedin"></i></a>
    
                </div>
            </div>
            
        </div>
    </div>

    <div class="footer">
        <p>Merit America | Team 3</p>
        <a href="https://github.com/jghoang/onlinebank"><img
            src="/img/github.png" alt="git"></a>
        <p>[View our project on GitHub]</p>
    </div>

    <script>
					/* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */
					function myFunction() {
						var x = document.getElementById("myTopnav");
						if (x.className === "topnav") {
							x.className += " responsive";
						} else {
							x.className = "topnav";
						}
					}
				</script>
</body>

</html>