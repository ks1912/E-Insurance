<%@page import="com.einsure.model.Manager"%>
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

<% List<Manager> managers = dao.getManagers();
%>
<div align="center">
<table class="table table-bordered table-hover" style="width:500px;">
<tr>
<th>Manager Id</th>
<th>Manager Name</th>
<th>Mobile</th>
<th>Email</th>
<th>Branch ID</th>
</tr>
<%
for(Manager m:managers)
{
	%>
	<tr>
	<td><%=m.getMgrNo() %></td>
	<td><%=m.getMgrName() %></td>
	<td><%=m.getMobile() %></td>
	<td><%=m.getEmail() %></td>
	<td><%=m.getBid() %></td>
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