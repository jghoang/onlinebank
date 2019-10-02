<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  


<jsp:include page="header.jsp" />


<div class="row">
    <div class="col-4 col-s-12">
        <h1 style="text-align: center;">Create a new Account</h1>

    <form:form action="/admin/account/add" method="post" modelAttribute="account">

        <form:label path="number">Account Number: </form:label> 
        <form:errors path="number"/>
        <form:input path="number"/>
        <br><br>
        <form:label path="balance">Account Type: </form:label> 
        <form:errors path="balance"/>
        <form:input path="balance" value="TODO: add the Account Type"/>
        <br><br>
        <form:label path="balance">Account Balance: </form:label> 
        <form:errors path="balance"/>
        <form:input path="balance"/>
        <br><br>
        <form:label path="rate">Rates: </form:label> 
        <form:errors path="rate"/>
        <form:input path="rate"/> 
        <br><br>

        <input type="submit" value="Create New Account"/>

    </form:form>

    </div>
</div>


<jsp:include page="footer.jsp" />
