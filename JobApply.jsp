<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Apply Job</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<body>
	<h2>JOB APPLY</h2>

<form action="ApplyJobServlet" method="post" class="box">

<label>USERNAME</label>
<input type="text" class="form-control" name="username" placeholder="ENTER THE USERNAME">

<label>JOBID</label>
<input type="text" class="form-control" name="jobid" placeholder="ENTER THE JOB ID">

<label>APPLYDT</label>
<input type="date" class="form-control" name="applydt">

<input type="submit"class="btn btn-outline-primary" value="APPLY">

</form>
</body>
</html>
