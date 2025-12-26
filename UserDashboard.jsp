<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="master.dto.UserDto" %>

<%
    String user = (String) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("Login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Dashboard</title>

<link rel="stylesheet"
 href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>

<style>
    body {
        background-color: #f5f7fa;
    }

    .top-bar {
        background-color: #0d6efd;
        color: white;
        padding: 15px 25px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .top-bar h4 {
        margin: 0;
    }

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
        color: white;
    }

    .dashboard-card {
        max-width: 700px;
        margin: 40px auto;
        background: #ffffff;
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0 0 15px rgba(0,0,0,0.1);
        text-align: center;
    }

    .dashboard-card h3 {
        color: #0d6efd;
        margin-bottom: 15px;
    }

    .dashboard-actions a {
        margin: 10px;
        min-width: 180px;
    }
</style>
</head>

<body>

<!-- TOP BAR -->
<div class="top-bar">
    <h4>User Dashboard</h4>
    <a href="LogoutServlet" class="logout-btn">Logout</a>
</div>

<!-- DASHBOARD CONTENT -->
<div class="dashboard-card">

    <h3>Welcome, <%=user%> 👋</h3>

    <p class="text-muted">
        Manage your account and job activities from here.
    </p>

    <div class="dashboard-actions">
        <a href="JobSearch.jsp" class="btn btn-outline-primary">
            Search Jobs
        </a>

        <a href="JobApply.jsp" class="btn btn-outline-success">
            Apply Job
        </a>

        <a href="ClientMenu.jsp" class="btn btn-outline-secondary">
            Client Menu
        </a>
    </div>

</div>

</body>
</html>
