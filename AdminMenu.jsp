<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Menu</title>

<link rel="stylesheet"
 href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>

<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background-color: #f4f6f9;A
    }

    .top-nav {
        background-color: #0d6efd;
        padding: 12px 30px;
        display: flex;
        align-items: center;
        justify-content: space-between;
    }

    .nav-title {
        color: white;
        font-size: 20px;
        font-weight: bold;
    }

    .menu-bar {
        display: flex;
        gap: 20px;
    }

    .menu-bar a {
        color: white;
        text-decoration: none;
        font-weight: bold;
        padding: 8px 12px;
        border-radius: 4px;
    }

    .menu-bar a:hover {
        background-color: rgba(255,255,255,0.2);
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
    }
    

    .content {
        padding: 40px;
    }
</style>

</head>

<body>

<!-- TOP NAVIGATION BAR -->
<div class="top-nav">
    <div class="nav-title">ADMIN MENU</div>

    <div class="menu-bar">
        <a href="Company.jsp">Company</a>
        <a href="CompanyUpd.jsp">Update Company</a>
        <a href="CompanyDel.jsp">Delete Company</a>
        <a href="Job.jsp">Job</a>
    </div>
</div>

	<a href="LogoutServlet" class="logout-btn">Logout</a>

<!-- PAGE CONTENT AREA -->
<div class="content">
    <h2>Welcome Admin</h2>
    <p>Select an option from the menu above.</p>
</div>


</body>
</html>
