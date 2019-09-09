<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<title>New Checking</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>
	<body>
	<div class="container">
		<h1>New Personal Checking</h1>
		<form:form action="/account/new" method="POST" modelAttribute="account">
			<form:label path="user">User:
				<form:select path="user">
					<c:forEach items="${users}" var="user">
        					<form:option value="${user.id}"><c:out value="${user.first_name} ${user.last_name}"/></form:option>
   					</c:forEach>
				</form:select>
			</form:label>
			<form:label path="state">State: 
				<form:input type="text" path="state"/>
			</form:label>
			<form:label path="expiration_date">Expiration Date: 
				<form:errors path="expiration_date"/>
				<form:input type="date" path="expiration_date"/>
			</form:label>
			<input type="submit" value="Create">
		</form:form>
		<% if(request.getAttribute("errors") != null){ %>
		<fieldset>
		<legend>Errors</legend>
		<c:forEach items="${errors}" var="error">
			<p><c:out value="${error.getDefaultMessage()}"/></p>
		</c:forEach>
		</fieldset>
		<% } %>
	</div>
	</body>
</html>