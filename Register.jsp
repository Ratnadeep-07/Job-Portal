<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
    }
    .container {
        width: 400px;
        margin: 80px auto;
        background: #fff;
        padding: 25px;
        border-radius: 6px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    h2 {
        text-align: center;
        margin-bottom: 20px;
    }
    input {
        width: 100%;
        padding: 10px;
        margin-bottom: 12px;
    }
    input[type=submit] {
        background: #007bff;
        color: white;
        border: none;
        cursor: pointer;
    }
    input[type=submit]:hover {
        background: #0056b3;
    }
    .link {
        text-align: center;
        margin-top: 10px;
    }
</style>

</head>
<body>

<div class="container">
    <h2>Register</h2>

    <form action="RegisterServlet" method="post">

        <input type="text" name="name"
               placeholder="Enter Name" required />

        <input type="email" name="email"
               placeholder="Enter Email" required />

        <input type="password" name="password"
               placeholder="Enter Password" required />

        <input type="text" name="mobile"
               placeholder="Enter Mobile Number" required />

        <input type="submit" value="Register" />

    </form>

    <div class="link">
        Already registered?
        <a href="Login.jsp">Login here</a>
    </div>
</div>

</body>
</html>

