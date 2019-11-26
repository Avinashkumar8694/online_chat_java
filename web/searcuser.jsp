<%-- 
    Document   : login
    Created on : Jan 19, 2018, 1:18:11 AM
    Author     : Avinash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(session.getAttribute("User")==null)
       
        response.sendRedirect("login.jsp");
    %>
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
      
  function searchuser()
            {
                
           // alert("");
                var user = $("#searchuser").val();
                
                var url = "searcheduser.jsp?user=" + user;
                var xhr = new XMLHttpRequest();
                xhr.open("GET",url,true);
                xhr.onreadystatechange= function (){searchuserresponse(xhr);};
                
                xhr.send();
            }
            function searchuserresponse(xhr)
            {
             if(xhr.readyState!=4)
             return;
            $("#pic").html(xhr.responseText);
            }
            
            
            function sendfriendrequest(friendid,id)
            {
                var url = "insertsearcheduser.jsp?user=" + friendid;
                var xhr = new XMLHttpRequest();
                xhr.open("GET",url,true);
                xhr.onreadystatechange= function (){requestresponse(xhr,id);};
                
                xhr.send();
            }
            function requestresponse(xhr,id)
            {
             if(xhr.readyState!=4)
             return;
         $("#" + id).text("Request sent");
         $("#" + id).attr("onclick","");
            }
        
        
        
  </script>
        <style>
            .profilepicture{
                position: relative;
                min-height: 92%;
            }  
            
 input[type=button], select {
    width: 10%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
   .pic
                {
                 position: relative;
                 float: left;
                 width: 100%;
                 height: 300px;
                 overflow-y: auto;
                 background-color: white;
                 border-top: solid #26e0ed;
                 color: red;
                 height: 100%;
                 
                }               
        </style>
    </head>
    <body onload="setprofilepic()">
        
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
                       <li>  <a href="FILEUPLOADPAGE.jsp">Help</a></li>
                        <li>  <a href="setting.jsp">Setting</a></li>
                         <li> <a href="logout.jsp">Log out</a></li>
                    <li><a href="contact.jsp">CONTACT</a></li>
                </ul>
            </div>
                      
        </div>     
        
       

        
      <div id="coverpicture" class="w3-container w3-red  profilepicture " 
            <div style="width:8%; height:44%; background-image: url('pics/side1.JPG'); background-size: 100%; position: relative; float: left; ">
            </div>
           <div id="abc"style="width:84%; height: 90%;  position: relative; float: left; ">
                        <div id="search" style="position: relative; width:100%;height:100%; background-color:transparent; margin-left: auto;margin-right: auto; top: 10px;">
                
                          <table border="0px" width="100%" height="100%">
                          <tr>
                               <td align="center" height="20%">
                                   <div style="width:100%; display: inline-block; outline: 0px;">
                                   <input class="text" type="text" placeholder="Search by Name or by Username" id="searchuser"/>
     <input type="button" value="Search" id="search" class="button" onclick="searchuser()"/> 
                                   </div>
                                   </td>
                          </tr>
                           <tr>
                              <td height="80%"> 
                           
                               <div id ="pic" class="pic"> </div> 
                                </td>
                            </tr>
                        </table>
               
            </div>
                    </div>
        </div>
    </body>
</html>
