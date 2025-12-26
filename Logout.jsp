<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logged Out</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f6f9;
        text-align: center;
        padding-top: 100px;
    }
    .box {
        background: #ffffff;
        display: inline-block;
        padding: 30px 40px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    a {
        display: inline-block;
        margin-top: 15px;
        text-decoration: none;
        background-color: #0d6efd;
        color: white;
        padding: 10px 20px;
        border-radius: 5px;
    }
    a:hover {
        background-color: #084298;
    }
</style>

</head>
<body>

<div class="box">
    <h2>You have been logged out</h2>
    <p>Thank you for using the system.</p>
    <a href="Login.jsp">Login Again</a>
</div>

</body>
</html>
