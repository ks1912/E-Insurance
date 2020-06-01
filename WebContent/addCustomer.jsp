<%@page import="com.einsure.model.Customer"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="custDao" class="com.einsure.dao.CustomerDao"></jsp:useBean>
<%
SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd");

int custId  = Integer.parseInt(request.getParameter("custid"));
String username = request.getParameter("uname");
String password = request.getParameter("password");

String dob = request.getParameter("dob");

System.out.println(dob);
Date dateofbirth = null;
try
{
	dateofbirth = dateformat.parse(dob);
	
}catch(Exception e)
{
	e.printStackTrace();
}

int age  = Integer.parseInt(request.getParameter("age"));
String email = request.getParameter("email");
String mobile = request.getParameter("mobile");
String address = request.getParameter("address");
String gender = request.getParameter("gender");

Customer cust = new Customer();

cust.setCustId(custId);
cust.setUsername(username);
cust.setPassword(password);
cust.setDob(dateofbirth);
cust.setAge(age);
cust.setEmail(email);
cust.setMobile(mobile);

cust.setAddress(address);
cust.setGender(gender);
cust.setStatus("activated");


boolean status = custDao.registerCustomer(cust);

if(status == true)
{
	String message = "Registered Successfully Please Login";
	request.setAttribute("custmessage", message);
	RequestDispatcher rd = request.getRequestDispatcher("customer.jsp");
	rd.forward(request, response);
}
%>
</body>
</html>