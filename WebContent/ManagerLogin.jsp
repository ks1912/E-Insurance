<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Manager Login Page | E-INSURENCE LOGIN PAGE</title>
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
        </style>
    </head>

    <body>
    <div class="container">
        <div class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>                        
            </button>
            <a class="navbar-brand" href="index.html">E-Insurence</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                
                    <li><a href = "aboutus.html"><span class = "glyphicon glyphicon-info-sign"></span> About us </a></li>
                    <li><a href="index.html"><span class="glyphicon glyphicon-login"></span>User </a></li>
                    <li><a href="userlogin.html"><span class="glyphicon glyphicon-user"></span>Manager</a></li>
                    <li><a href="userlogin.html"><span class="glyphicon glyphicon-user"></span>Ceo</a></li>
                    
            </ul>
        </div>
    </div>
</div>

    
    
        <form action="loginservlet" method="POST">
        <div class="login_box">
        
            <div class="login-box">
  <h1> Manager-LOGIN</h1>
  <div class="textbox">
    <i class="fas fa-user"></i>
    <input class="form-control" type="text" placeholder="Username" name="email" required="true">
  </div>

  <div class="textbox">
    <i class="fas fa-lock"></i>
    <input class="form-control" type="password" placeholder="Password" name="pass" required="true">
  </div>
  <span style="float: center">
  <input type="submit" class="btn-block btn-primary" value="LOGIN"/></span>
</div>
        </div>
        </form>
       
    </div>
   
     
      <!-- <div>
        </div>
  <div>
  
  </div>  -->
    
   <!-- <div class="footer" style="color: red;margin top: 100px;">
  <p>Posted by: Hege Refsnes</p>
  <p>Contact information: <a href="mailto:someone@example.com">
  someone@example.com</a>.</p>
</div> -->
  
  <!-- </div>	
     <div id="container">
     <h1>xcvlsvls</h1>
     
     
     </div>	 -->
 
 </body>
 
</html>
