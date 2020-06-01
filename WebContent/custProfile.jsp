<%@page import="com.einsure.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
td
{
padding: 10px;

}

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <jsp:useBean id="custdao" class="com.einsure.dao.CustomerDao"></jsp:useBean>
<%
 Customer c = custdao.getCustomer(Integer.parseInt(request.getParameter("custid")));

%>
<div align="center">
<div style="width: 200px; color: white; font-size: 19px;">
<table class="table table-bordered">
<tr><td><%=c.getCustId() %></td></tr>
<tr><td><%=c.getUsername() %></td></tr>
<tr><td><%=c.getDob() %></td></tr>
<tr><td><%=c.getAge() %></td></tr>
<tr><td><%=c.getEmail() %></td></tr>
<tr><td><%=c.getMobile() %></td></tr>
<tr><td><%=c.getGender() %></td></tr>
<tr><td><%=c.getAddress() %></td></tr>

<tr><td><%=c.getStatus() %></td></tr>



</table>
</div>
</div>
<%

RequestDispatcher rd = request.getRequestDispatcher("customerhome.jsp");
rd.include(request, response);
%>
</body>
</html>