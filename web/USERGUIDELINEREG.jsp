<%-- 
    Document   : login
    Created on : Jan 19, 2018, 1:18:11 AM
    Author     : Avinash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="mainpage.css" rel="stylesheet"/>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="assets/css/logincss.css">
        <link rel="stylesheet" href="assets/css/dashboard.css">
        <script type="text/javascript" src ="js/jquery-1.11.1.min.js"></script>
        <link rel="stylesheet" href="assets/css/logincss.css">
         <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT-AWESOME CORE STYLE  -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <title>JSP Page</title>
    </head>
    <style>
    .mainbody
    {
   top: 50px;
    position: relative;
    float: left;
        width: 100%;
        height: 80%;
        background-color: silver;
   }
    
    
    
    
    
  </style>
    <body>
        <div class="w3-container  w3-indigo headhide">
            <div class="navbar-header">
                
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <img src="image/logo.png" alt="aBp ONLINE CHATTING"  title="LIVE CHAT , LIFE CHAT"  style="float: left;"/><div title="LIVE CHAT , LIFE CHAT" class="navbar-brand">&nbsp;aBp ONLINE CHATTING</div>
                
            </div>
            
            
        <div class="navbar-collapse collapse move-me">
            
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="HOME.jsp">HOME</a></li>
                     <li> <a href="userguideline.jsp">User Guideline</a></li>
                       <li>  <a href="RandL.jsp">REGISTRATION FORM OR LOGIN FORM</a></li>
                        <li>  <a href="About.jsp">ABOUT</a></li>
                        
                    <li><a href="contact.jsp">CONTACT</a></li>
                </ul>
            </div>
                      
        </div>  
           
        <div id="mainbody" class="mainbody">
            <center>
            <ul>
                <li>
                    From the Front Page of aBp ONLINE CHATTING , click on Registration Form or Login Form option.
                    
                    
                </li>
                <li>
                    After clicking ,Registration Form or Login Form Page is Open.
                </li>
                <li>
                    Then Registration Form or Login Form Page window , click on REGISTRATION BUTTON.
                </li>
            </ul>
            
            </center>
            
            <table width='100%'>
                <tr><td align='center'><video width="480" height="450" controls="controls">
                            <source src="video/livechat.mp4"/>
                        </video>
                    </td></tr>          

                
            </table>
                
        </div>
                
             <jsp:include page="WEB-INF/FOOTERPAGE.jsp"></jsp:include>
        </div>
    </body>
</html>
