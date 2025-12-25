<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>

<%
    String user = (String) session.getAttribute("user");

    if (user == null) {
        response.sendRedirect("Login.jsp");
    } else {
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Client Menu</title>
</head>

	<style>
		  .logout-btn {
        background-color: #dc3545;
        color: white;
        text-decoration: none;
        padding: 8px 14px;
        border-radius: 4px;
        font-weight: bold;
    }

    .logout-btn:hover {
        background-color: #bb2d3b;
    }
	</style>
	
<body>

<h2>Welcome, <%= user %></h2>

<hr>

<ul>
    <li><a href="Job.jsp">Post / View Jobs</a></li>
    <li><a href="JobSearch.jsp">Search Jobs</a></li>
    <li><a href="JobApply.jsp">Apply for Job</a></li>
    <li><a href="JobSeeker.jsp">Job Seeker Profile</a></li>
    <li><a href="LogoutServlet">Logout</a></li>
</ul>

<a href="LogoutServlet">Logout</a>


</body>
</html>

<%
    }
%>

