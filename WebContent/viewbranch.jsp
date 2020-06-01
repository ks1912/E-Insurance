<%@page import="com.einsure.model.Branch"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
table
{
width: 400px;

}
table tr
{
color:white;
font-size: 20px;
font-family: serif;
padding-left:30 px;
padding: 10 px;

}

tr:hover {
	color: blue;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="dao" class="com.einsure.dao.CeoDao"></jsp:useBean>

<% List<Branch> branches = dao.getBranches();
%>
<div align="center">
<table class="table table-bordered table-hover" style="width:500px;">
<tr>
<th>Branch Id</th>
<th>Branch Name</th>
<th>Location Id</th>
</tr>
<%
for(Branch b:branches)
{
	%>
	<tr>
	<td><%=b.getBid() %></td>
	<td><%=b.getBname() %></td>
	<td><%=b.getLcode() %></td>
	
	</tr>
	<%
	}

%>

<%

RequestDispatcher rd = request.getRequestDispatcher("ceohome.jsp");
rd.include(request, response);
%>
</table>
</div>
</body>
</html>