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
        <link rel="stylesheet" href="assets/css/dashboard.css">
        <script type="text/javascript" src ="js/jquery-1.11.1.min.js"></script>
        <link rel="stylesheet" href="assets/css/logincss.css">
         <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT-AWESOME CORE STYLE  -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
         <!--   <script type="text/javascript" src ="js/chatquery.js"></script>-->
        <script type="text/javascript">
            
             (function () { 

  $(document).ready(function () {
      
     
      
  });
             }.call(this));
      
   function getMessages()
            { 
                var receiver=$("#chat_with").val();
                
                var url="chathistorysup.jsp?";
                var xhr=new XMLHttpRequest();
                xhr.open("GET",url,true);
                xhr.onreadystatechange=function (){getMessagesResponse(xhr);};
                xhr.send();
                
            }
           function getMessagesResponse(xhr)
           {
               if(xhr.readyState!=4)
                   return;
            $("#abc").html(xhr.responseText);
           
           }
             function printmsg()
        {
            var x=document.getElementById("print");
            x.style.visibility="hidden";
            print();
            x.style.visibility="visible";
        }
        
       </script>
       <style>
           
       </style>
       
    </head>
    <body onload="getMessages()">
        
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
                     <li> <a href="ReportingUser.jsp">Chat History</a></li>
                       <li>  <a href="FILEUPLOADPAGE.jsp">Upload</a></li>
                        <li>  <a href="setting.jsp">Setting</a></li>
                         <li> <a href="logout.jsp">Log out</a></li>
                    <li><a href="contact.jsp">CONTACT</a></li>
                </ul>
            </div>
                      
        </div>     
        
       

        
      <div id="coverpicture" class="w3-container  profilepicture " 
           
           <!-- notification-->
          
          <div id="leftborder" class="leftborder" >
                    <div id="abc" width="100%" height="900px">
                        
                    </div>
                   <input id="print" type="button" onclick="printmsg()" value="Print" />
                     </div>
    
  

           
        </div>
    </body>
</html>
