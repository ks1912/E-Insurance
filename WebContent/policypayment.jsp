<%@page import="java.util.List"%>
<%@page import="com.einsure.model.Policy"%>
<%@page import="com.einsure.model.Order"%>
<%@page import="com.einsure.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<jsp:useBean id="orderDao" class="com.einsure.dao.OrderDao"></jsp:useBean>
<%

Order o1 = (Order)pageContext.getAttribute("o", PageContext.REQUEST_SCOPE);
System.out.println(o1);
 Customer c = (Customer)session.getAttribute("customer");
Order o =(Order) session.getAttribute("order");
Policy p = (Policy)session.getAttribute("policy");
//System.out.println(o);
System.out.println(c);
System.out.println(p); 

   boolean status  =   orderDao.order(o);
   
   if(status == true)
   {
	   String message = "Your Policy Order is completed<br>Please wait Branch Manager Conformation"
			   +"Your Policy Number Order No is "+o.getOrderId();
	   
	   request.setAttribute("msg", message);
	  // session.removeAttribute("customer");
	   //session.removeAttribute("policy");
	 //  session.removeAttribute("order");
   }
 
 
 
 
%>
<jsp:forward page="customerhome.jsp"></jsp:forward>
</body>
</html>