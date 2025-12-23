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
	<h2 class="title">USER LOGIN</h2>
	<div style="width:30%;margin:50px auto;">

    <form action="LoginServlet" method="post" class="form-box">
    <label>Email</label>
    <input type="email" class="form-control" name="email" placeholder="ENTER YOUR EMAIL ADDRESS" required>
    <label>Password</label>
    <input type="password" class="form-control" name="password" placeholder="ENTER YOUR PASSWORD" required>
    <input type="submit" class="btn btn-outline-primary" value="Login">
   
</form>
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
