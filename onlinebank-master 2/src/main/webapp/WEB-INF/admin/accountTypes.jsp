<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  


<jsp:include page="header.jsp" />


<div class="row">
    <div class="col-4 col-s-12">

        <h1 style="text-align: center;">Account Types</h1>
        <form:form action="/admin/accounts/type" method="post"
            modelAttribute="accountType">

            <form:label path="type">New account type name: </form:label>
            <form:errors path="type" />
            <form:input path="type" />
            <br>
            <br>

            <input type="submit" value="Create Account Type" />

        </form:form>
    </div>
    <div class="col-4 col-s-12">
        <h1 style="text-align: center;">Current Account Types</h1>
        <table>
            <c:forEach items="${accountTypes}" var="type">
            <tr>
                <td><c:out value="${type.type}" /></td>
            </tr>            
            </c:forEach>
        </table>
    </div>
</div>


<jsp:include page="../includes/footer.jsp" />
