<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <jsp:include page="AdminMenu.jsp"></jsp:include>
     <%@ page import="master.dao.CompanyDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Company</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<body>
	<form action="<%=request.getContextPath()%>/CompanyServlet" method="post" class="box">

<label>COMPANY ID</label>
<input type="text" class="form-control" name="cid" required>

<label>PHNO</label>
<input type="text" class="form-control" name="phone">

<label>EMAIL</label>
<input type="email" class="form-control"  name="email">

<label>ADDRESS</label>
<input type="text" class="form-control" name="address">

<input type="submit" class="btn btn-outline-primary" value="UPDATE">
</form>
	
<%
if(request.getMethod().equalsIgnoreCase("POST")){
    int cid = Integer.parseInt(request.getParameter("cid"));
    String name = request.getParameter("name");
    String email = request.getParameter("email");

    CompanyDao dao = new CompanyDao();
    if(dao.updateCompany(cid, name, email)){
        out.println("Company Updated Successfully");
    } else {
        out.println("Update Failed");
    }
}
%>

</body>
</html>
