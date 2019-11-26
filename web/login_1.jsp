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
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="assets/css/logincss.css">
        
    </head>
    <body>
        
            
        
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
         <tr><td colspan="2" align ="center"><input type ="text" id="name"  name="user" class="textbox"></td></tr>
         <tr><td colspan="2" align ="center"><font face="monospace" size="5">Password</font></td></tr>
         <tr><td colspan="2" align ="center"><input type ="password" id="pass" name="pass" class="textbox" ></td></tr>
         <tr> <td colspan="2" align ="center"><input type ="Submit" value="Login" class="Loginbutton "></td></tr>
         </table>
          </form>
           <form action="usr_registration.jsp" method ="get"> 
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
