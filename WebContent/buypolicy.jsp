
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Calendar"%>
<%@page import="com.einsure.model.Order"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.LocalDate"%>
<%@page import="com.einsure.model.Customer"%>
<%@page import="com.einsure.model.Policy"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="dao" class="com.einsure.dao.CeoDao"></jsp:useBean>
<jsp:useBean id="orderdao" class="com.einsure.dao.OrderDao"></jsp:useBean>
<jsp:useBean id="custdao" class="com.einsure.dao.CustomerDao"></jsp:useBean>
<%
int pid = Integer.parseInt(request.getParameter("pid"));
int custId = Integer.parseInt(request.getParameter("custid"));
Policy p = dao.getPolicy(pid);
Customer c = custdao.getCustomer(custId);

 Date date = new Date();
 SimpleDateFormat dateformar = new SimpleDateFormat("yyyy-MM-dd");
 String sdate = null;
 try
 {
	 sdate = dateformar.format(date);
	 
 }catch(Exception e)
 {
	 e.printStackTrace();
 }
LocalDate startDate =LocalDate.parse(sdate, DateTimeFormatter.ofPattern("yyyy-MM-dd"));
LocalDate endDate = startDate.plusYears(p.getPolicy_period());
 
int orderId= orderdao.getMaxorderNo()+1012;

Order order =new  Order();
order.setOrderId(orderId);
order.setCustId(c.getCustId());
order.setPolicyId(p.getPolicy_id());
order.setAmount(p.getPolicy_amount());
Date sd = null;
Date ed = null;
try
{
	sd = dateformar.parse(startDate.toString());
	ed=dateformar.parse(endDate.toString());
}catch(Exception e)
{
	e.printStackTrace();
}
order.setStartDate(sd);
order.setEndDate(ed);
order.setStatus("pending");
 session.setAttribute("order", order);

session.setAttribute("policy", p);
session.setAttribute("customer", c); 
//System.out.println(order);
pageContext.setAttribute("o", order,PageContext.REQUEST_SCOPE);

%>


<div align="center" >
<div style="width:300px; border: 2px solid blue;">

<form action="policypayment.jsp">

  <fieldset>
  
  <legend>Policy Details</legend>
  <table>
  <tr><td>Policy Id</td>
  <td><%=p.getPolicy_id() %></td>
  </tr>
  <tr><td>Policy Name</td>
  <td><%=p.getPolicy_name() %></td>
  </tr>
  <tr><td>Policy Amount</td>
  <td><%=p.getPolicy_amount() %></td>
  </tr>
  <tr><td>Return Amount</td>
  <td><%=p.getPolicy_return_amount() %></td>
  </tr>
  </table>
  
  </fieldset>
<fieldset>
<legend>Customer Details</legend>

<table>
<tr>
<td>Customer Id</td>
<td><%=c.getCustId() %></td>
</tr>
<tr>
<td>Customer Name</td>
<td><%=c.getUsername() %></td>
</tr>
<tr>
<td>Customer Email</td>
<td><%=c.getEmail() %></td>
</tr>
<tr>
<td>Customer Mobile</td>
<td><%=c.getMobile() %></td>
</tr>


</table>


</fieldset>
<fieldset>
  <input type="submit" value="Order Policy">

</fieldset>

</form>

</div>


</div>

</body>
</html>