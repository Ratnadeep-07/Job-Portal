<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Error</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f6f9;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .error-box {
        background: #ffffff;
        padding: 30px 40px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
        text-align: center;
        width: 400px;
    }

    .error-box h2 {
        color: #d9534f;
        margin-bottom: 15px;
    }

    .error-box p {
        color: #333;
        margin-bottom: 20px;
    }

    .error-box a {
        text-decoration: none;
        background-color: #0275d8;
        color: white;
        padding: 10px 18px;
        border-radius: 5px;
        font-weight: bold;
    }

    .error-box a:hover {
        background-color: #025aa5;
    }
</style>

</head>
<body>

<div class="error-box">
    <h2>Login Failed</h2>
    <p>Invalid username or password.<br>
       Please try again.</p>

    <a href="Login.jsp">Back to Login</a>
</div>

</body>
</html>
