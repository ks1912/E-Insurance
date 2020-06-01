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
      <%
         String username = (String)session.getAttribute("ceo");
        
         %>
   <header class="banner">

           <span>
           
            <a  href="index.html">E-Insurance - CEO Home</a>
            </span>
       <span style="margin-left: 300px;">
         Welcome,   <%=username %>
      </span>
      <span  style="margin-left: 500px;">
         <a href="ceologout.jsp" style="text-decoration: none;"><font style="font-size: 20px;">Logout</font></a>
       </span>
         
   </header>
    <nav>
    
     <div class="container-fluid" style="font-size: 19px; color: blue;">
   
    <ul class="nav navbar-nav" >
      <li> <a href="branch.jsp"><font style="color: blue;font-size: 20px;">Add Branch</font></a></li>
      <li><a href="manager.jsp"><font style="color: blue;font-size: 20px;">Add Manager</font></a></li>
      <li><a href="policy.jsp"><font style="color: blue;font-size: 20px;">Add Policy</font></a></li>
     <!--  <li><a href="#"><font style="color: blue;font-size: 20px;">Add Branch</font></a></li> -->
      
      <li>
      
      <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">

<font style="color: blue;font-size: 20px;">view</font>
  <span class="caret"></span></button>
  <ul class="dropdown-menu">
    <li><a href="viewbranch.jsp"><font style="color: blue;font-size: 20px;">Branch</font></a></li>
    <li><a href="viewManagers.jsp"><font style="color: blue;font-size: 20px;">Manager</font></a></li>
    <li><a href="viewpolicies.jsp"><font style="color: blue;font-size: 20px;">Policy</font></a></li>
       <li><a href="#"><font style="color: blue;font-size: 20px;">Customer</font></a></li>
  </ul>
      
      </li>
    </ul>
  </div>
    
    </nav> 
     <%
     
    String message = (String)request.getAttribute("msg");
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
