<%@page import="com.einsure.model.Branch"%>
<%@page import="com.einsure.model.Location"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

td{
font-size: 16px;
color: white;
font-weight: bold;
padding: 10px;
}
legend {
	color: white;
}
select {
	background-color: gray;
	color: black;
	width: 200px;
	height: 50px;
}
tr
{
padding-top: 15px;

}


	
.submitbtn
{
border-radius: 10px;
border-style: solid;
color: white;
background-color: olive;
height: 40px;

}
</style>

</head>
<body>
<jsp:useBean id="dao" class="com.einsure.dao.CeoDao"></jsp:useBean>
<%
List<Branch> branches = dao.getBranches();

%><div align="center">

<div style="width: 300px;height: auto;">


<fieldset>

<legend>Add Manager</legend>
  
<form action="addmanager.jsp">

  <table class="table table-bordered">
  <tr>
  <td>Manager Id</td>
  <td> <input type="text" name="mid" ></td>
  </tr>
  <tr>
  <td>Manager Name</td>
  <td> <input type="text" name="mname" ></td>
  </tr>
   <tr>
  <td>Manager Mobile</td>
  <td> <input type="text" name="mobile" ></td>
  </tr>
   <tr>
  <td>Manager Email</td>
  <td> <input type="email" name="email" ></td>
  </tr>
  <tr>
  <td>Manager  Branch Id</td>
  <td> 
  
  <select name="bid">
  
  <%
  
  for(Branch b :branches)
  {
	 %>
	 <option><%=b.getBid()%></option>
	 <% 
  }
  
  %>
  </select>
  </td>
  </tr>
  
  <tr >
  <td colspan="2" align="center" >
  <input type="submit" value="Add Manager" class="submitbtn">
  
  </td>
  </tr>
  </table>


</form>
</fieldset>
</div>
</div>
<%

RequestDispatcher rd = request.getRequestDispatcher("ceohome.jsp");
rd.include(request, response);
%>
</body>
</html>