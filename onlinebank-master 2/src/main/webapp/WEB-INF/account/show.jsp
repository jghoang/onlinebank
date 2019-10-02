<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>${ account.id}</h2>
<h1>Account Details</h1>
		<c:forEach var="account" items="${account.id">
		<div class="row">
			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-3">
						Account Number:
					</div>
					<div class="col-sm-9">
						${account.accountNumber}
					</div>
				</div>
				<div class="row">
					<div class="col-sm-3">
						Type:
					</div>
					<div class="col-sm-9">
						${account.type}
					</div>
				</div>
				<div class="row">
					<div class="col-sm-3">
						Amount:
					</div>
					<div class="col-sm-9">
						${account.balance}
					</div>
				</div>
				<div class="row">
					<div class="col-sm-3">
						UserID:
					</div>
					<div class="col-sm-9">
						${account.userid}
					</div>
				</div>
			
			</div>
								
		</div>
</c:forEach>	
</body>
</html>