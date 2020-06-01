<%@page import="com.einsure.model.Branch"%>
<%@page import="com.einsure.model.Location"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<script type="text/javascript">


function returnAmount() {
	
	var rp= parseInt(document.getElementById("rp").value);
	var amount= parseInt(document.getElementById("amount").value);
	document.getElementById("rta").value= amount+(amount*(rp/100));
	//alert(rp)
	
}

</script>

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

<div style="width: 400px;">


<fieldset>

<legend>Add Policy</legend>
  
<form action="addpolicy.jsp">

  <table class="table table-bordered">
  <tr>
  <td> <input type="text" name="pid" placeholder="Policy Id" ></td>
  <td> <input type="text" name="type" placeholder="Policy Type"></td>
  
  </tr>
  
  <tr>
  
  <td> <input type="text" name="pname" placeholder="Policy name"></td>
  <td> <input type="text" name="tc" placeholder="Terms & Conditions"></td>
  </tr>
  
   
   <tr>
  
  <td> <input type="text" name="period" placeholder="Time Period" ></td>
  <td><input type="text" id="amount" name="amount" placeholder="amount"></td>
  </tr>
  
  <tr>
  
  <td> 
  <input type="text" name="retper" id="rp" placeholder="Return Rate" onchange="returnAmount()">
  
  </td>
  <td>
  <input type="text" name="retamount" id="rta" placeholder="Return Amount" >
  
  </td>
  </tr>
  
  <tr >
  <td colspan="2" align="center" >
  <input type="submit" value="Add Policy" class="submitbtn">
  
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