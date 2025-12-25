<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Job Entry</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<body>
	<h2>JOB PORTAL - ADMIN PART</h2>

<form action="JobServlet" method="post" class="box">

<label>JOBID</label>
<input type="text" class="form-control" name="jobid" required>

<label>JOBNM</label>
<input type="text" class="form-control" name="jobname" required>

<label>JOBTYPE</label>
<select name="jobtype">
    <option>Full Time</option>
    <option>Part Time</option>
    <option>Internship</option>
</select>

<label>DOMAIN</label>
<select name="domain">
    <option>IT</option>
    <option>Finance</option>
    <option>Marketing</option>
    <option>HR</option>
</select>

<label>VALID UPTO</label>
<input type="date" class="form-control" name="validupto">

<label>YRSEXP</label>
<input type="number" class="form-control" name="yrsexp">

<label>COMPANYID</label>
<input type="text" class="form-control" name="companyid" required>

<input type="submit" class="btn btn-outline-primary" value="SAVE">

</form>
</body>
</html>
