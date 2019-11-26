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
     
         <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT-AWESOME CORE STYLE  -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
       <script type="text/javascript" src ="js/jquery-1.11.1.min.js"></script>
        <script type="text/javascript">
     
        function doRegistration()
            {
                var u = $("#user").val();
                
               
                var p = $("#pass").val();
                
                var cp = $("#cpass").val();
                var n = $("#name").val();
                 if ( u == "" || p == "" ||cp == "" || n=="")
                    {
                        alert("One or more Fields are Empty");
                        return;
                    }
                  
                
                if(p != cp)
                    {
                        alert("Password did not matched");
                        return;
                    }
                    var url = "regMgr.jsp?username=" + u + "&password=" + p + "&confirmpass=" + cp + "&name=" + n;
                    
                    var xhr = new XMLHttpRequest();
                    xhr.open("GET",url,true);
                   
                    xhr.onreadystatechange = function (){doRegistrationResponse(xhr);};
                    
                    xhr.send();
                    
                   
            }
            function doRegistrationResponse(xhr)
            {
              if(xhr.readyState != 4)
              return;
          $("#diverrors").html(xhr.responseText);
         var a=  $("#diverrors").text();
        // alert(a);
        disp();            
          
            }
            function disp()
            {
                var a=  $("#diverrors").text();
                url="chekcons.jsp?cons=" + a;
                var xhr=new XMLHttpRequest();
                xhr.open("GET",url,true);
                xhr.onreadystatechange = function (){checkconsresponse(xhr);};
                xhr.send();
                
                }
              function   checkconsresponse(xhr)
              {
                  if(xhr.readyState != 4)
              return;
                    $("#diverrors1").html(xhr.responseText);
                   var a= $("#diverrors1").text();
                  var u = $("#user").val("");
                
               
                var p = $("#pass").val("");
                
                var cp = $("#cpass").val("");
                var n = $("#name").val("");
                alert(a) ;  
      
              }
            
  </script>
        
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
          <center><div id="diverrors1" hidden="hidden"></div>
         <table width="100%" border ="0px" alignment="center">
               <tr><td colspan ="2" align ="center"><h4> <div id="diverrors" hidden="hidden" ></div></h4></td></tr>
               <tr><td  colspan ="2" align ="center" style="font-family: Algerian; font-size: 20px;">USER REGISTRATION</td></tr>
                <td colspan ="2" align ="center"><input type ="text" placeholder="Username" id ="user" class="user"></td></tr>
            
               <td colspan ="2" align ="center"><input type ="password" placeholder="Password" id ="pass" class="user"></td></tr>
                <td colspan ="2" align ="center"><input type ="password" placeholder="Confirm Password" id ="cpass" class="user"></td></tr>
                <td colspan ="2" align ="center"><input type ="text" id ="name" placeholder="Name" class="user"></td></tr>
               <tr><td colspan ="2" align ="center">   <input type ="submit" id="button1" value ="Save" onclick="doRegistration()"></td> </tr>
               <form action="login.jsp" method="Post">
                   <tr><td colspan='2' align='center' style="font-family: Algerian; font-size: 10px;"><h5>Login Now</h5></td></tr>
               <tr><td colspan="2" align='center'><input type ="submit" id="button1" value ="Login" class="button"></td></tr>
               </form>
              </table>
          
         </center>
        </div>
    </body>             

</html>
