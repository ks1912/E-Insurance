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

<%
int pid =Integer.parseInt(request.getParameter("pid"));
String type = request.getParameter("type");
String name = request.getParameter("pname");
int period =Integer.parseInt(request.getParameter("period"));
int ratePer =Integer.parseInt(request.getParameter("retper"));
double amount =Double.parseDouble(request.getParameter("amount"));
double retamount =Double.parseDouble(request.getParameter("retamount"));
String tc = request.getParameter("tc");

Policy p = new Policy();
p.setPolicy_amount(amount);
p.setPolicy_id(pid);
p.setPolicy_name(name);
p.setPolicy_period(period);
p.setPolicy_return_percentage(ratePer);
p.setPolicy_return_amount(retamount);
p.setPolicy_terms_and_conditions(tc);
p.setPolicy_type(type);

boolean s= dao.addPolicy(p);

String message="";
if(s == true)
{
	message = "Ploicy Added Successfully"; 
}


request.setAttribute("msg", message);
RequestDispatcher rd = request.getRequestDispatcher("ceohome.jsp");
rd.forward(request, response);
%>

%>


</body>
</html>