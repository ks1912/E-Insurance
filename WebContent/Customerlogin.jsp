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
         String username = request.getParameter("uname");
         
         String password = request.getParameter("password");
         
        boolean status =  custDao.customerLogin(username, password);
        
        if(status==true)
        {
        	
        	session.setAttribute("cust", username);
        	%>
        	<jsp:forward page="customerhome.jsp"></jsp:forward>
        	<%
        }
        else
        {
        	%>
        	<jsp:include page="loginerrors.jsp"></jsp:include>
        	<%
        }
         %>
</body>
</html>