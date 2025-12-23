<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<body>
	<h2 class="title">USER REGISTRATION</h2>

<form action="RegisterServlet" method="post" class="form-box">

    <label>Name</label>
    <input type="text" class="form-control" name="name" placeholder="ENTER YOUR NAME" required>

    <label>Email</label>
    <input type="email" class="form-control" name="email" placeholder="ENTER EMAIL ADDRESS" required>

    <label>Password</label>
    <input type="password" class="form-control" name="password" placeholder="ENTER YOUR PASSWORD" required>

    <label>Mobile</label>
    <input type="text" class="form-control" name="mobile" placeholder="ENTER YOUR MOBILE NUMBER" required>

    <input type="submit" class="btn btn-outline-primary" value="Register">
</form>
</body>
</html>
