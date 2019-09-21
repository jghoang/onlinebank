<!-- Please Add the paths, methods, and models inside of "" or anywhere is needed -->


<%@ page language="java" contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html>

<head>
    <meta charset="UTF-8">
    <title>Transactions</title>
</head>

<body>
    <h1>Transactions Logs</h1> <br><br>



    <h1>Transactions</h1>
    <table border="1px">
        <thead>
            <tr>
                <th>
                    <h3>Transaction ID</h3>
                </th>
                <th>
                    <h3>Account</h3>
                </th>
                <th>
                    <h3>Type of Transaction (Deposit, Withdraw ...)</h3>
                </th>
                <th>
                    <h3>Amount</h3>
                </th>
                <th>
                    <h3>Date</h3>
                </th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>
                    Add Method
                    <c:out value="${}" />
                </td>
                <td>
                    Add Method
                    <c:out value="${}" />
                </td>
                <td>
                    Add Method
                    <c:out value="${}" />
                </td>
                <td>
                    Add Method
                    <c:out value="${}" />
                </td>
                <td>
                    Add Method
                    <c:out value="${}" />
                </td>
            </tr>
        </tbody>
    </table>
    <br><br><br><br>



    <h2>Make a Transaction</h2>
    <form action="/${}" method="POST" modelAttribute="">



        <label path="">Amount:</label>
            <input path="">
      


       <br> <label path="">From:  </label>
        <select path="">
                <option value="checking">Personal Checking</option>
                <option value="checking">Business Checking</option>
                <option value="checking">DBA</option>
                <option value="checking">IRA</option>
        </select>

        <br> <label path="">To:  </label>
            <select path="">
                    <option value="checking">Personal Checking</option>
                    <option value="checking">Business Checking</option>
                    <option value="checking">DBA</option>
                    <option value="checking">IRA</option>
            </select>
       <br> <input type="submit" value="Submit" />
    </form>
</body>

</html>