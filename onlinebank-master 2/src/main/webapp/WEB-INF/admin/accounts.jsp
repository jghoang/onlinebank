<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  


<jsp:include page="header.jsp" />


<div class="row">
    <div class="col-4 col-s-12">
        <h1 style="text-align: center;">Accounts</h1>
        <table>
            <c:forEach items="${accounts}" var="account">
            <tr>
                <td><c:out value="${account.accountNumber}" /></td>
                <td><c:out value="${account.accountBalance}" /></td>
                <td><c:out value="${account.rate}" /></td>
                <td><c:out value="${account.user}" /></td>
            </tr>            
            </c:forEach>
        </table>
    </div>
</div>


<jsp:include page="../includes/footer.jsp" />
