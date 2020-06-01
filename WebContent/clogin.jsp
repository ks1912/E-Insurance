<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="ceodao" class="com.einsure.dao.CeoDao"></jsp:useBean>
         <%
         String username = request.getParameter("ceoname");
         
         String password = request.getParameter("pass");
         
        boolean status =  ceodao.ceoLogin(username, password);
        
        if(status==true)
        {
        	
        	session.setAttribute("ceo", username);
        	%>
        	<jsp:forward page="ceohome.jsp"></jsp:forward>
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