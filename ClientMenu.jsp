<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="master.dto.UserDto" %>

<%
    /* Session check */
    UserDto user = (UserDto) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Client Menu</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<body>
	 <div class="title">CLIENT MENU</div>

    <div class="menu-bar">

        <div class="menu-item">
            <a href="JobApply.jsp">JOBAPPLY</a>
        </div>

        <div class="menu-item">
            <a href="JobSearch.jsp">SEARCHJOB</a>
        </div>

        <div class="menu-item">
            <a href="SearchApplication.jsp">SEARCH APPLICATION</a>
        </div>

        <div class="menu-item empty"></div>
        <div class="menu-item empty"></div>
    </div>
</body>
</html>
