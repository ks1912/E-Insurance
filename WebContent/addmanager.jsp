<%@page import="com.einsure.model.Manager"%>
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

int mgrId = Integer.parseInt(request.getParameter("mid"));
int bid = Integer.parseInt(request.getParameter("bid"));

String name =request.getParameter("mname");
String mobile =request.getParameter("mobile");
String email =request.getParameter("email");

Manager m = new Manager();
m.setMgrNo(mgrId);
m.setBid(bid);
m.setEmail(email);
m.setMobile(mobile);
m.setMgrName(name);


boolean s = dao.addManager(m);
String message="";
if(s == true)
{
	message = "Manager Added Successfully"; 
}


request.setAttribute("msg", message);
RequestDispatcher rd = request.getRequestDispatcher("ceohome.jsp");
rd.forward(request, response);
%>



</body>
</html>