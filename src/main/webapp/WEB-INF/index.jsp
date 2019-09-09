<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<!-- Required meta tags -->
	<meta charset="ISO-8859-1">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Load an icon library to show a hamburger menu (bars) on small screens -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.css" />
    <link rel="stylesheet" href="/css/styles.css">
    <title>d</title>
</head>

<body>
    <div class="topnav" id="myTopnav">
    
        <a href="/" id="logo" target="_blank"><img src="/img/logo.png" alt="logo"></a>
        <a href="/" class="active">Home</a>
        <a href="/about">About Us</a>
        <a href="/checking">Checking</a>
        <a href="/savings">Savings</a>
        <a href="/invest">Investments</a>
        <a href="/newUser">Sign Up</a>
        <a href="/showUser" class="login">Login</a>
        <a href="javascript:void(0);" class="icon" onclick="myFunction()">
            <i class="fa fa-bars"></i>
        </a>
    </div>

    <div class="row">
        <div class="col-9 col-s-12">
            <h1>Welcome to Merit America Online Bank!</h1>
            <span class="dot1"></span>
            <span class="dot2"></span>
            <span class="dot3"></span>
            <span class="dot4"></span>
        </div>

        <div class="col-3 col-s-12">
            <div class="login-form">
                <h2>Sign In</h2>
                <p>to see your account</p>
                <form action="/showUser" method="POST">
                    <p>
                        <input type="text" id="email" name="email" placeholder="Email" />
                    </p>
                    <p>
                        <input type="password" id="password" name="password" placeholder="Password" />
                    </p>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    <input type="submit" value="Sign In" />
                </form>
                <br>
                <p>Don't have an account? <span class="enroll"><a href="/newUser">Enroll Today!</a></span></p>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="section-mid col-s-12">
            <div class="box">
                <span class="fas fa-star checked"></span>
                <span class="fas fa-star checked"></span>
                <span class="fas fa-star checked"></span>
                <span class="fas fa-star checked"></span>
                <span class="fas fa-star checked"></span>
                <h3>See how rewarding online banking with Merit can be!</h3>
                <p>Enroll today and build a better financial future </p>

                <ul>
                    <li>Checking</li>
                    <li>DBAs</li>
                    <li>Savings</li>
                    <li>CDs</li>
                    <li>IRAs</li>
                </ul>

            </div>
        </div>


    </div>
    <div class="row">
        <div class="section-bottom col-12 ">
            <h4>DISCLAIMER: This is not a real bank.</h4>
            <h5>INVESTMENTS: </h5>
            <table class="col-12">
                <tr>
                    <td>Are Not Insured by Any Federal Government Agency</td>
                    <td>Are Not a Condition to Any Banking Service or Activity</td>
                </tr>
                <tr>
                    <td>Are not FDIC insured</td>
                    <td>Are not Bank Guaranteed</td>
                </tr>
                <tr>
                    <td>May Lose Value</td>
                    <td>Are not Deposits</td>
                </tr>
            </table>

        </div>

    </div>
    <div class="footer">
        <p>Merit America | Team 3</p>
        <a href="https://github.com/jghoang/onlinebank"><img src="/img/github.png" alt="git"></a>
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
