<%@page import="com.einsure.model.Branch"%>
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

<%
int bid = Integer.parseInt(request.getParameter("bid"));
String bname = request.getParameter("bname");

String location = request.getParameter("lid");
String[] data= location.split("-");
int lid = Integer.parseInt(data[0]);
Branch b = new Branch();
b.setBid(bid);
b.setBname(bname);
b.setLcode(lid);
boolean s = dao.addBranch(b);
String message="";
 if(s == true)
 {
	message = "Branch Added Successfully"; 
 }
 

 request.setAttribute("msg", message);
RequestDispatcher rd = request.getRequestDispatcher("ceohome.jsp");
rd.forward(request, response);


%>


</body>
</html>