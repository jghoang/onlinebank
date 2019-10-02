<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../includes/header.jsp" />
<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<title>Dashboard</title>
</head>

<body>
<div class="row">
	<div class="col-12 col-s-12" style="text-align:center">
	<h1 style="text-align:center">
		Welcome,
		<c:out value="${user.firstName}" />
	</h1>
	
	<h2><a href="/account/new">Lets get started and create your accounts</a></h2>
	<h3 style="color: red;"><a href="/logout">Logout</a></h3>
</div>
</div>
	<jsp:include page="../includes/footer.jsp" />
</body>

</html>