<%@page import="com.einsure.model.Policy"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
        <title>E-INSURENCE LOGIN PAGE</title>
        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" rel="stylesheet">
        <!-- FONT AWSOME -->
        <link href="css/style.css" rel="stylesheet">
        <!-- jQuery -->
        <script src="js/jquery.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        <!-- jquery-->
        <script src="js/bootstrap.js.js"></script>
        <style>
            body
            {
                background: url(img/6.jpg) no-repeat ;
            }
           
            .btn
            {
                display: inline-block;
                width: 90px;
                height: 90px;
                background: #3ac4f2;
                border-radius: 30%;
                box-shadow: 0 5px 15px -5px #00000070;
                color: #3495db;
                overflow: hidden;
                position: relative;
                padding: 0 20px 0 20px;
            }
           
            .sub
            {
            height: 40px;
            width:120px;
            border-style: solid;
            border-radius: 20px;
            color: blue;
            
            }
            .formtable
            {
            
          
            width: 300px;
            }
            td{
            color: white;
            
            }
            th{
            color: white;
            
            }
        </style>
        </head>
<body>
  <div class="container-fluid">
     <div class="row" >
     <div class="col" style="background-color: white;height: 50px;padding: 0px;">
      <a class="navbar-brand" href="index1.html">E-Insurance</a>
     <span style="margin-left: 850px;">
     <a href="index1.html"><button>Home</button></a>
     </span>
     </div>
    
     
     </div>
     </div>
     <br>
     <br>
     <div class="container-fluid">
     <div class="row" style="margin-right: 20px;">
     
     <div class="col-sm-6">
       <div style="text-align:left;font-size: 17pt;color: white;">
      
      <%
      String custMessage = (String) request.getAttribute("custmessage");
      
      if(custMessage == null)
      {
    	  custMessage = "";
      }
      %>
      
      <%=custMessage %>
       Customer Login
       </div>
        
        <form action="Customerlogin.jsp">
       
        <table class="formtable">
        <tr>
        <td> User Name </td>
        <td> <input type="text" name="uname"></td>
        
        </tr>
        <tr>
        <td> Password </td>
        <td> <input type="password" name="password"></td>
        
        </tr>
        
        <tr>
        
        <td colspan="2" align="center"> <input type="submit" value="LOGIN" class="sub"></td>
        
        </tr>
        </table>
        
        </form>
        <div style="color: white;font-size: 20px;">
New Customer<a href="customeregister.jsp">SinUp Here</a>
  </div>   
     
     </div>
     <div class="col-sm-6">
     
     <jsp:useBean id="ceodao" class="com.einsure.dao.CeoDao"></jsp:useBean>
     
     <%
     
     List<Policy> policies = ceodao.getPolicy();
    %> 
     <div>
     <table border="2">
     <tr>
     <th>Policy No</th>
     <th>Policy Type</th>
     <th>Policy Name</th>
     <th>Amount</th>
     <th>Rate Of Return</th>
     <th>Return Amount</th>
     <th>Policy Time</th>
     <th>Terms and Conditions</th>
     <th>Buy</th>
     </tr>
     <%
     for(Policy p:policies)
     {
     	%>
     	<tr>
     	<td><%=p.getPolicy_id() %></td>
     	<td><%=p.getPolicy_type() %></td>
     	<td><%=p.getPolicy_name() %></td>
     	<td><%=p.getPolicy_amount() %></td>
     	<td><%=p.getPolicy_return_percentage() %></td>
     	<td><%=p.getPolicy_return_amount()%></td>
     	<td><%=p.getPolicy_period()+"Years" %></td>
     	<td><%=p.getPolicy_terms_and_conditions() %></td>
     	<td><a href="buypolicy?id=<%=p.getPolicy_id()%>">Buy</a></td>
     	</tr>
     	<%
     	}

     %>

    
     </table>
     </div>

     
     
    
     
     </div>
     
     </div>
     
     
     </div>


  

</body>
</html>