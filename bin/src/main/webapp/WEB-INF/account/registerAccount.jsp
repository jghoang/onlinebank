<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta name="description" content="create new account">

<head>
    <title>Create Account</title>
</head>

<body>
    <form>
        <table width="500" >
            <thead>
            </thead>
            <tbody>

                <tr>
                    <td colspan="2">
                        <h2 align=center>Create New Account</h2>
                    </td>
         		</tr>
                <tr>
                	<td>
		                <span>Select the type of account you want to Create:</span>
		                <select>
				            <option>Personal Checking</option>
				            <option>DBA</option>
				            <option>IRA</option>
				        </select>
			        </td>
				</tr>
                <tr>
                    <td><label for="first_name">First Name:</label></td>
                    <td><input type="text" id="first_name" name="first_name " size="20"></td>
                </tr>
                <tr>
                    <td><label for="last_name">Last Name:</label></td>
                    <td><input type="text" id="last_name" name="last_name" size="20"></td>
                </tr>
                <tr>
                    <td><label for="email">Email:</label></td>
                    <td><input type="text" id="email" name="email" size="20"></td>
                </tr>
            </tbody>
        </table>
        <br>

        <input type="submit" value="Click Here to Submit">
    </form>
</body>



</html>