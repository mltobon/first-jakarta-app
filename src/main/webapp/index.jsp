<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Register employees</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
    <h1>Employee Register Form</h1>
    <form action="/register-employee" method="post">
        <table style="with: 80%">
            <tr>
                <td>First Name</td>
                <td><input type="text" name="firstName" /></td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td><input type="text" name="lastName" /></td>
            </tr>
            <tr>
                <td>UserName</td>
                <td><input type="text" name="username" /></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="password" /></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><input type="text" name="address" /></td>
            </tr>
            <tr>
                <td>Contact No</td>
                <td><input type="text" name="contact" /></td>
            </tr>
        </table>
        <input type="submit" value="Register" />
    </form>

<h1>Employees list</h1>
<p> list users</p>
<form action="/register-employee" method="get">
    <input type="submit" value="list" />

</form>
</body>
</html>