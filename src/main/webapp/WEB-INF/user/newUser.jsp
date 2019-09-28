<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="../includes/header.jsp" />

<div class="row">
    <div class="col-4 col-s-12">
    
	<h1 style="text-align:center;">Create New User</h1>
	<form:form action="/user/new" method="post" modelAttribute="user">

		<form:label path="firstName">First Name: </form:label> 
		<form:errors path="firstName"/>
		<form:input path="firstName"/>
        <br><br>
		<form:label path="lastName">Last Name: </form:label> 
		<form:errors path="lastName"/>
		<form:input path="lastName"/><br>
        <br><br>
		<form:label path="emailAddress">E-mail Address: </form:label> 
		<form:errors path="emailAddress"/>
		<form:input path="emailAddress"/>
        <br><br>
		<form:label path="address">Address: </form:label> 
		<form:errors path="address"/>
		<form:input path="address"/>
        <br><br>
		<form:label path="phoneNumber">Phone Number: </form:label> 
		<form:errors path="phoneNumber"/>
		<form:input path="phoneNumber"/>
        <br><br>
		<form:label path="ssn">Social Security Number: </form:label> 
		<form:errors path="ssn"/>
		<form:input path="ssn"/>
        <br><br>
		<form:label path="userName">User Name: </form:label> 
		<form:errors path="userName"/>
		<form:input path="userName"/>
        <br><br>
		<form:label path="password">Password: </form:label> 
		<form:errors path="password"/>
		<form:password path="password"/>	
        <br><br>

		<input type="submit" value="Create New User"/>

	</form:form>
</div>
</div>

<jsp:include page="../includes/footer.jsp" />
