<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Manager Login   | E-INSURENCE LOGIN PAGE</title>
        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="css/style.css" rel="stylesheet">
        <!-- jQuery -->
        <link href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" rel="stylesheet">
        <!-- FONT AWSOME -->
        <script src="js/jquery.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        <!-- jquery-->
        <script src="js/bootstrap.js.js"></script>
        <style>
            body
            {
                background-color: black;
                background: url(img/6.jpg) no-repeat ;
            }
            h1
            {
                text-align: center;
            }
            c1{
                float: center;
            }
            c2
            {
               float: right; 
            }
            .c3
            {
                position: absolute;
                top: 50%;
                transform: translateY(-50%);
                width: 100%;
                text-align: left;
                padding: 0 0 0 0;
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
            } 
            .btn i
            {
                line-height: 90px;
                font-size: 26px;
                transition: 0.2x linear;
            }
            .btn:hover i
            {
                transform: scale(1.3);
                color: #f1f1f1;
            }
            .btn::before
            {
                content: "";
                position: absolute;
                width: 120px;
                height: 120px;
                transform: rotate(45deg);
                left: -110%;
                top: 90%;
            }
            .btn:hover::before
            {
                animation: aaa 0.7s 1;
                top: -10%;
                left: -10%;
            }
            @keyframes aaa
            {
                0%
                {
                 left: -110%;
                 top: 90%;
                }
                50%
                {
                 left: 10%;
                 top: -30%;
                }
                100%
                {
                 left: -10%;
                 top: -10%;
                }
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
                    <li><a href="index.html"><span class="glyphicon glyphicon-user"></span>User </a></li>
                    <li><a href="ManagerLogin.jsp"><span class="glyphicon glyphicon-user"></span>Manager</a></li>
                    <li><a href="userlogin.html"><span class="glyphicon glyphicon-user"></span>Ceo</a></li>
                    
            </ul>
        </div>
    </div>
</div>
</div>
<br>
        
        <br>
        <br>
			<div id="footer1" style="color: red">
		 
          <br>
            <div style="padding: 0 0 0 190px">
            
            <a class="btn" href="login.html" >
                <i class="fab fa-login">LOGIN</i>&nbsp;
            </a>
            <a class="btn" href="https://www.youtube.com" target="blank">
                <i class="fab fa-youtube"></i>
            </a>
            <a class="btn" href="https://www.google.com" target="blank">
                <i class="fab fa-google"></i>
            </a>
            
		<a class="btn" href="https://www.facebook.com" target="blank">
                <i class="fab fa-facebook-f"></i>
            </a>
            <a class="btn" href="https://twitter.com" target="blank">
                <i class="fab fa-twitter"></i>
            </a>
            <a class="btn" href="https://www.instagram.com" target="blank">
                <i class="fab fa-instagram"></i>
            </a>

			
			</div>        
		     <p style="color: red;font-size: 20px;">Copyright &copy; E-Insurence. All Rights Reserved  |  Contact Us: +91 9205922798</p>	
        
        
    </body>
</html>
