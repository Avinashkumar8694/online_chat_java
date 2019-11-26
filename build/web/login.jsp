<%-- 
    Document   : login
    Created on : Jan 19, 2018, 1:18:11 AM
    Author     : Avinash
--%>

<%
    if(session.getAttribute("User")!=null)
        response.sendRedirect("dashboard.jsp");
   
     
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="assets/css/logincss.css">
         <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT-AWESOME CORE STYLE  -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    
        
    </head>
    <body>
        
           <div class="w3-container  w3-indigo">
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
                    <li><a href="userguideline.jsp">USER GUIDELINE</a></li>
                    <li><a href="RandL.jsp">REGISTRATION FORM OR LOGIN FORM</a></li>
                     <li><a href="About.jsp">ABOUT</a></li>
                                          
                    <li><a href="contact.jsp">CONTACT</a></li>
                </ul>
            </div>
        </div>
        
        <div  class="w3-container loginhead dropdown">
            <div class="menu" onclick="myFunction(this)">
            <div class="bar1"></div>
             <div class="bar2"></div>
             <div class="bar3"></div>
             </div>
            <div class="dropdown-content">
           <a href="HOME.jsp">Home</a>
           <a href="userguideline.jsp">User Guideline</a>
           <a href="#">Registration Or Login Form</a>
            <a href="About.jsp">About</a>
             <a href="contact.jsp">Contact Us</a>
            </div>

        <script>
        function myFunction(x) {
         x.classList.toggle("change");
            }
        </script>
        </div>
        
        <div class="w3-container">
            <center>
              <form action="loginMgr.jsp" method ="get"> 
         <table width="100%" >
             <tr><td  colspan="2" align ="center"><font face="monospace" size="10" > User Login Form </font></td></tr>
             <br>
             <br>
             <tr><td colspan="2" align ="center"><font face="monospace" size="5" > Username </font></td></tr>
         <tr><td colspan="2" align ="center"><input type ="text" id="name"  name="user" class="textbox" required></td></tr>
         <tr><td colspan="2" align ="center"><font face="monospace" size="5">Password</font></td></tr>
         <tr><td colspan="2" align ="center"><input type ="password" id="pass" name="pass" class="textbox" required></td></tr>
         <tr> <td colspan="2" align ="center"><input type ="Submit" value="Login" class="Loginbutton "></td></tr>
         </table>
          </form>
           <form action="user_registration.jsp" method ="get"> 
             <table width="100%">
                 <h1></h1>
         <tr><td colspan="2" align ="center"><font face="monospace" size="3" > Already Registered!!! </font></td></tr>
          <tr> <td colspan="2" align ="center"><input type ="Submit" value="Register" class="Loginbutton "></td></tr>
         </table>
                   </form>
         </center>
        </div>
    </body>
</html>
