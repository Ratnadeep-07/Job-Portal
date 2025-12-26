
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<body>
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
        background: #28a745;
        color: white;
        border: none;
        cursor: pointer;
    }
    input[type=submit]:hover {
        background: #1e7e34;
    }
</style>

	<div class="container">
    <h2>Login</h2>

    <form action="LoginServlet" method="post">

        <input type="text" name="name"
               placeholder="Enter Username" required />

        <input type="password" name="password"
               placeholder="Enter Password" required />

        <input type="submit" value="Login" />

    </form>
</div>
</div>

<%
    String msg = request.getParameter("msg");
if ("invalid".equals(msg)) {
%>
   <p style="color:red; text-align:center;">Invalid Email or Password</p>
<%
   }
%>
</body>
</html>
