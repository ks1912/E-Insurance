<%@page import="com.einsure.model.Policy"%>
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
width: 700px;

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
td
{
width:50px;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="dao" class="com.einsure.dao.CeoDao"></jsp:useBean>
<jsp:useBean id="custdao" class="com.einsure.dao.CustomerDao"></jsp:useBean>
<% List<Policy> policies = dao.getPolicy();
String username = (String)session.getAttribute("cust");

int custId = custdao.getCustomerId(username);
%>
<div >
<table class="table table-bordered table-hover" style="width:1000px;">
<tr>
<th>Policy No</th>
<th>Policy Type</th>
<th>Policy Name</th>
<th>Amount</th>
<th>Rate Of Return</th>
<th>Return Amount</th>
<th>Policy Time</th>
<th>Terms and Conditions</th>
<th> Buy </th>
</tr>
<%
for(Policy p:policies)
{
	%>
	<tr>
	<td><%=p.getPolicy_id() %></td>
	<td><%=p.getPolicy_type() %></td>
	<td><%=p.getPolicy_name() %></td>
	<td><%=p.getPolicy_amount() %></td>
	<td><%=p.getPolicy_return_percentage() %></td>
	<td><%=p.getPolicy_return_amount()%></td>
	<td><%=p.getPolicy_period()+"Years" %></td>
	<td><%=p.getPolicy_terms_and_conditions() %></td>
	<td><a href="buypolicy.jsp?custid=<%=custId%>&pid=<%=p.getPolicy_id()%>">Buy</a></td>
	</tr>
	<%
	}

%>

<%

RequestDispatcher rd = request.getRequestDispatcher("customerhome.jsp");
rd.include(request, response);
%>
</table>
</div>
</body>
</html>