<%@page import="com.einsure.model.Location"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

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
tr th
{
padding-top: 15px;
color: white;
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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="dao" class="com.einsure.dao.CeoDao"></jsp:useBean>
<%
List<Location> allLocation = dao.getLocation();

%><div align="center">

<div style="width: 300px;height: auto;">


<fieldset>

<legend>Add Branch</legend>
  
<form action="addbranch.jsp">

  <table class="table table-bordered">
  <tr>
  <th>Branch Id</th>
  <td> <input type="number" name="bid" placeholder="Branch Id"></td>
  </tr>
  <tr>
  <th>Branch Name</th>
  <td> <input type="text" name="bname" placeholder="Branch Name"></td>
  </tr>
  
  <tr>
  <th>Location</th>
  <td> 
  
  <select name="lid">
  
  <%
  
  for(Location l :allLocation)
  {
	 %>
	 <option><%=l.getLcode()+"-"+l.getLname() %></option>
	 <% 
  }
  
  %>
  </select>
  </td>
  </tr>
  
  <tr >
  <td colspan="2" align="center" >
  <input type="submit" value="Add Branch" class="submitbtn">
  
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