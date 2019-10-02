<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../includes/header.jsp" />

<div class="row">
   <div class="col-12 col-s-12">
    
	<h1 style="text-align:center">Create New User</h1>
    
	<img src="/img/main5.png" style="float:left; max-height: 450px" >
     <div class="user-form">
     <p><form:errors path="user.*"/></p>
	 <p><c:out value="${error}" /></p>
    <form:form method="POST" action="/register" modelAttribute="user">
        <p>
            <form:label path="email">Email:</form:label><br>
            <form:input type="text" path="email"/>
        </p>
        <p>
            <form:label path="password">Password:</form:label>
            <form:password path="password"/>
        </p>
		<p>
			<form:label path="firstName">First Name: </form:label>
			<form:input type="text" path="firstName" />
		</p>
		<p>
			<form:label path="lastName">Last Name: </form:label>
			<form:input type="text" path="lastName" />
		</p>
		<p>
			<form:label path="address">Address: </form:label>
			<form:input type="text" path="address" />
		</p>
		<p>
			<form:label path="phoneNumber">Phone #: </form:label>
			<form:input type="text" path="phoneNumber" />
		</p>
		<p>
			<form:label path="ssn">Social Security #: </form:label>
			<form:input type="text" path="ssn" />
		</p>
		<p>
			<form:label path="userName">Username: </form:label>
			<form:input type="text" path="userName" />
		</p>
		
			<input type="submit" value="Register!"/>
    </form:form>
	</div>

	</div>
</div>
</div>

<jsp:include page="../includes/footer.jsp" />
