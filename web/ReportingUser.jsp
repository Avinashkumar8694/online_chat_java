<%-- 
    Document   : login
    Created on : Jan 19, 2018, 1:18:11 AM
    Author     : Avinash
--%>
<%
    if(session.getAttribute("User")==null)
       
        response.sendRedirect("login.jsp");
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="assets/css/logincss.css">
        <link rel="stylesheet" href="assets/css/dashboard.css">
        <script type="text/javascript" src ="js/jquery-1.11.1.min.js"></script>
        <link rel="stylesheet" href="assets/css/logincss.css">
         <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT-AWESOME CORE STYLE  -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
             <script type="text/javascript" src ="js/chatquery.js"></script>
        <script type="text/javascript">
            
             (function () { 

  $(document).ready(function () {
      
   
      
  });
             }.call(this));
      
   function userslist()
            {
                
                
                var url = "Reportinguserlist.jsp?";
                var xhr = new XMLHttpRequest();
                xhr.open("GET",url,true);
                xhr.onreadystatechange= function (){Activityresponce(xhr);};
                
                xhr.send();
            }
            function Activityresponce(xhr)
            {
             if(xhr.readyState!=4)
             return;
            $("#abc").html(xhr.responseText);
            }
            
            function username(id)
            {
              
                var url = "Reportingusername.jsp?user=" + id;
               window.location=url;
            }
            function userresponce(xhr)
            {
             if(xhr.readyState!=4)
             return;
            
            }
            
 
  </script>
        <style>
 .profilepicture{
                position: relative;
                min-height: 92%;
            }  
 #chat_with
 {
     display: none;
 }
        </style>
    </head>
    <body onload="userslist()">
        
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
                    <li><a href="dashboard.jsp">HOME</a></li>
                    <li><a href="chat_page.jsp">Chat</a></li>
                    <li><a href="searcuser.jsp">Search Users</a></li>
                     <li> <a href="Reportinguser.jsp">Chat History</a></li>
                       <li>  <a href="FILEUPLOADPAGE.jsp">Help</a></li>
                        <li>  <a href="setting.jsp">Setting</a></li>
                         <li> <a href="logout.jsp">Log out</a></li>
                    <li><a href="contact.jsp">CONTACT</a></li>
                </ul>
            </div>
                      
        </div>     
        
       

        
      <div id="coverpicture" class="w3-container  profilepicture " 
           <div style="width:8%; height: 750px; background-image: url('pics/side1.JPG'); background-size: 100%; position: relative; float: left; ">
                            
                        </div>
           <div id="abc"style="width:84%; height: 700px;  position: relative; float: left; ">
                        
                    </div>
  
<div style="width:8%; height: 750px; background-image: url('pics/side21.jpg');background-size: 100%; position: relative; float: left; ">
                            
                        </div>
            <input type="text" id="chat_with" />
        </div>
    </body>
</html>
