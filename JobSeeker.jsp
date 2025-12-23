<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Job Seeker</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<body>
	<h2>CLIENT PART - JOB SEEKER</h2>

<form action="JobSeekerServlet" method="post" class="box">

<label>USERNAME</label>
<input type="text" name="username" required>

<label>PASSWORD</label>
<input type="password" name="password" required>

<label>NAME</label>
<input type="text" name="name">

<label>PHNO</label>
<input type="text" name="phone">

<label>EMAIL</label>
<input type="email" name="email">

<label>DOMAIN</label>
<input type="text" name="domain">

<label>YREXP</label>
<input type="number" name="yexp">

<input type="submit" value="ADD">

</form>
</body>
</html>
