<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>LOGIN | E-INSURENCE LOGIN PAGE</title>
        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.css" rel="stylesheet">
        <!-- Custom CSS -->
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
            
            .banner
            {
             height: 70px;
             width: auto;
             background-color: white;
             color: blue;
             font-size: 23px;
             font-family: sans-serif;
             display: block;
            }
            nav
            {
            height: 70 px;
            width: auto;
            background-color: white;
           margin-top: 10px;
            }
        </style>
    </head>

    <body>
    <jsp:useBean id="custdao" class="com.einsure.dao.CustomerDao"></jsp:useBean>
      <%
         String username = (String)session.getAttribute("cust");
        
      int custId = custdao.getCustomerId(username);
         %>
   <header class="banner">

           <span>
           
            <a  href="customerhome.jsp">E-Insurance - Customer Home</a>
            </span>
       <span style="margin-left: 300px;">
         Welcome,   <%=username %>
      </span>
      <span  style="margin-left: 500px;">
         <a href="custlogin.jsp" style="text-decoration: none;"><font style="font-size: 20px;">Logout</font></a>
       </span>
         
   </header>
    <nav>
    
     <div class="container-fluid" style="font-size: 19px; color: blue;">
   
    <ul class="nav navbar-nav" >
      
      <li><a href="cviewpolicies.jsp"><font style="color: blue;font-size: 20px;">View Policies</font></a></li>
     
      
      <li>
      
      <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">

<font style="color: blue;font-size: 20px;">view</font>
  <span class="caret"></span></button>
  <ul class="dropdown-menu">
    <li><a href="custProfile.jsp?custid=<%=custId%>"><font style="color: blue;font-size: 20px;">Profile</font></a></li>
    <li><a href="cpolicies.jsp?custid<%=custId%>"><font style="color: blue;font-size: 20px;">My Policies</font></a></li>
    
  </ul>
      
      </li>
    </ul>
  </div>
    
    </nav> 
     <%
     
    String message = (String)request.getAttribute("msg");
     System.out.println(message);
     if(message==null)
     {
    	 message = "";
     }
     %>
     <h1 style="color: white;">
     <%=message %>
   </h1>
 </body>
</html>
