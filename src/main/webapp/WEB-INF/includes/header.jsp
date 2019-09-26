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
    <title>Merit America Online Bank</title>
</head>

<body>
    <div class="topnav" id="myTopnav">
    
        <a href="/" id="logo" target="_blank"><img src="/img/logo.png" alt="logo"></a>
        <a href="/" id="home">Home</a>
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
    
