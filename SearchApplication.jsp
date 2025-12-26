<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="master.utility.DBConnection" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Application</title>

<link rel="stylesheet"
 href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>

<style>
    body {
        background-color: #f5f7fa;
    }

    .page-title {
        text-align: center;
        margin-top: 30px;
        margin-bottom: 20px;
        font-weight: bold;
        color: #0d6efd;
    }

    .search-card {
        max-width: 450px;
        margin: auto;
        background: #ffffff;
        padding: 25px;
        border-radius: 8px;
        box-shadow: 0 0 15px rgba(0,0,0,0.1);
    }

    .result-card {
        max-width: 750px;
        margin: 30px auto;
        background: #ffffff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 15px rgba(0,0,0,0.1);
    }

    label {
        font-weight: 600;
        margin-bottom: 6px;
    }

    .btn-search {
        width: 100%;
        margin-top: 15px;
    }
</style>
</head>

<body>

<h3 class="page-title">SEARCH APPLICATION</h3>

<!-- SEARCH FORM -->
<div class="search-card">

    <form method="get">

        <label>Username</label>
        <input type="text"
               class="form-control"
               name="username"
               placeholder="Enter username"
               required>

        <input type="submit"
               class="btn btn-primary btn-search"
               value="Search Application">
    </form>

</div>

<!-- SEARCH RESULT -->
<%
String username = request.getParameter("username");

if (username != null) {

    Connection con = DBConnection.getConnection();
    PreparedStatement ps = con.prepareStatement(
        "SELECT * FROM applyjob WHERE username=?");

    ps.setString(1, username);
    ResultSet rs = ps.executeQuery();

    boolean found = false;
%>

<div class="result-card">

    <table class="table table-hover table-bordered text-center">
        <thead class="table-dark">
            <tr>
                <th>Username</th>
                <th>Job ID</th>
                <th>Apply Date</th>
            </tr>
        </thead>
        <tbody>

<%
    while (rs.next()) {
        found = true;
%>
            <tr>
                <td><%= rs.getString("username") %></td>
                <td><%= rs.getString("jobid") %></td>
                <td><%= rs.getString("applydt") %></td>
            </tr>
<%
    }

    if (!found) {
%>
            <tr>
                <td colspan="3" class="text-danger fw-bold">
                    No Applications Found
                </td>
            </tr>
<%
    }
%>
        </tbody>
    </table>

</div>

<%
}
%>

</body>
</html>
