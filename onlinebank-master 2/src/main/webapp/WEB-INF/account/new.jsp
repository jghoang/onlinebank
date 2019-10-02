<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../includes/header.jsp" />

<div class="row">
<div class="col-12 col-s-12" style="text-align:center">
<h1>
		Please select the accounts you would like to create,
		<c:out value="${user.firstName}" />
	</h1>
	<h2><a href="/account/{id}">view your accounts</a></h2>
	<a href="/login?logout"> Logout</a>
	<div class="col-12 col-s-12">
	<img src="/img/piggy.png" class="col-8" style="max-height:450px; float: left">
	
	
	<div class="accountform">
	<form:form action="/account/new" method="post" modelAttribute="account">
	<form:hidden value="${ user.id }" path="user"/>
	<table>

	<tr><td> Account Number <form:input path="number"/> </td>
	<td><form:errors path="number" cssClass="error"/> </td></tr>

	<tr><td> Account Type 
	<form:select path="type"> 
	<form:option value="personal">Personal Checking</form:option>
	<form:option value="saving">Savings</form:option>
	<form:option value="cd">CDs</form:option>
	<form:option value="dba">DBA</form:option>
	<form:option value="ira">IRA</form:option>
	<form:option value="roth">Roth IRA</form:option>
	<form:option value="rollover">Rollover IRA</form:option>
	</form:select></td>
	<td><form:errors path="type"/> </td>
	
</tr>


	
	<tr><td> Account Balance <form:input path="balance"/> </td>
	<td><form:errors path="balance" cssClass="error"/> </td></tr>
	
	<tr><td colspan=2><input type="submit" value="save"> </td></tr>
	</table>
	<form:errors path="*" cssClass="error"></form:errors>
	</form:form >
	</div>
</div>
</div>
</div>

<jsp:include page="../includes/footer.jsp" />