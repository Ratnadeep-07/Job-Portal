<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <jsp:include page="AdminMenu.jsp"></jsp:include>
     <%@ page import="master.dao.CompanyDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADD COMPANY</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<body class="container mt-4">
	<h2 class="mb-3">JOB PORTAL - ADMIN PART</h2>

<form action="<%=request.getContextPath()%>/CompanyServlet" method="post" class="box">

<label>COMPANY ID</label>
<input type="text" class="form-control" name="cid" required>

<label>COMPNM</label>
<input type="text" class="form-control" name="name" required>

<label>PHNO</label>
<input type="text" class="form-control" name="phone" required>

<label>EMAIL</label>
<input type="email"class="form-control" name="email" required>

<label>ADDRESS</label>
<input type="text" class="form-control" name="address" required>

<input type="submit" class="btn btn-outline-primary" value="SAVE">
</form>

<%
if(request.getMethod().equalsIgnoreCase("POST")){
    int cid = Integer.parseInt(request.getParameter("cid"));
    String name = request.getParameter("name");
    String email = request.getParameter("email");

    CompanyDao dao = new CompanyDao();
    if(dao.insertCompany(cid, name, email)){
        out.println("Company Added Successfully");
    } else {
        out.println("Error Adding Company");
    }
}
%>

</body>
</html>
