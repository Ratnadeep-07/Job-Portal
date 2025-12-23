<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Job</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<body>
	<h2>SEARCH JOB</h2>

<form method="get">
<label>DOMAIN</label>
<input type="text" name="domain">
<input type="submit" value="SEARCH">
</form>

<table border="1" width="100%">
<tr>
<th>JOBID</th><th>NAME</th><th>TYPE</th><th>DOMAIN</th><th>EXP</th>
</tr>

<%
String domain = request.getParameter("domain");
if(domain != null){
 Connection con = DBConnection.getConnection();
 PreparedStatement ps = con.prepareStatement("SELECT * FROM job WHERE domain=?");
 ps.setString(1, domain);
 ResultSet rs = ps.executeQuery();

 while(rs.next()){
%>
<tr>
<td><%=rs.getString("jobid")%></td>
<td><%=rs.getString("jobname")%></td>
<td><%=rs.getString("jobtype")%></td>
<td><%=rs.getString("domain")%></td>
<td><%=rs.getString("yrsexp")%></td>
</tr>
<% }} %>
</table>
</body>
</html>
