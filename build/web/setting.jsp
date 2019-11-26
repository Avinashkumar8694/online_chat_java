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
      
      setInterval("countnotification()",2000);
      setInterval("countmsgnotification()",2000);
      
  });
             }.call(this));
      
  
        
        
         function  hidenotif()
    {
        $("#notifbox").toggle(1000);
          
    }   
    function  dispnotif()
    {
        
              
              var url="requestNotification.jsp?";
          
          var xhr=new XMLHttpRequest();
         
              xhr.open("GET",url,true);
               
              xhr.onreadystatechange = function (){dispnotifresponse(xhr);};
              xhr.send();
          
    }
    function dispnotifresponse(xhr)
    {  
       
              if(xhr.readyState!=4)
          return ;
      $("#notification").html(xhr.responseText);
       }
   function acceptedRequest(id)
          {
              
              var url="updatefriendRequestnotification.jsp?sender=" + id;
          
          var xhr=new XMLHttpRequest();
              xhr.open("GET",url,true);
              xhr.onreadystatechange = function (){updateresponse(xhr);};
              xhr.send();
          }
          function updateresponse(xhr)
          {
              if(xhr.readyState!=4)
          return ;
      
    }
 function sendchat()
          { 
              var url = "chat_page.jsp?";
            window.location =url;
          }
 function countnotification()
          {
              dispnotif();
              var url="CountNotification.jsp?";
              var xhr=new XMLHttpRequest();
              xhr.open("GET",url,true);
              xhr.onreadystatechange = function (){countnotificationresponse(xhr);};
              xhr.send();
          }
          function countnotificationresponse(xhr)
          {
              if(xhr.readyState!=4)
                  
        return ;
   
              $("#count").html(xhr.responseText);
          }         
function countmsgnotification()
          
            {  
              var url="countmessagesnotification.jsp?";
              var xhr=new XMLHttpRequest();
              xhr.open("GET",url,true);
              xhr.onreadystatechange = function (){countmsgnotificationresponse(xhr);};
              xhr.send();
          }
          function countmsgnotificationresponse(xhr)
          {
              if(xhr.readyState!=4)          
        return ;
  $("#messagecount").html(xhr.responseText);
  }  
   function changepic()
            {
                $("#profileCover").show(300);
                $("#blockedlist").hide(300);
                $("#updateAccount").hide(300);
            }
            
            function blockedList()
            {
                $("#blockedlist").show(300);
                $("#profileCover").hide(300);
                $("#updateAccount").hide(300);
                var url="blockeduserlist.jsp?";
                var xhr=new XMLHttpRequest();
                xhr.open("GET",url,true);
                
                xhr.onreadystatechange=function (){blockeduserlistresponse(xhr);};
                xhr.send();
            }
            function blockeduserlistresponse(xhr)
            {
                 if(xhr.readyState !=4)
                    return ;
                $("#blockedlist").html(xhr.responseText);
            }
            function unblock(id)
            {
                alert(id);
                var url="unblockuser.jsp?user="+ id;
                var xhr=new XMLHttpRequest();
                xhr.open("GET",url,true);
                
                xhr.onreadystatechange=function (){unblockresponse(xhr);};
                xhr.send();
            }
            function unblockresponse(xhr)
            {
                if(xhr.readyState !=4)
                    return ;
                blockedList();
            }
            
            function updateAccount()
            {
                $("#profileCover").hide(300);
                $("#blockedlist").hide(300);
                $("#updateAccount").show(300);
                document.getElementById("username").readOnly = true;
                document.getElementById("pass").readOnly = true;
                document.getElementById("confirmpass").readOnly = true;
                document.getElementById("name").readOnly = true;
                
                
            }
           
            function returneddetail(id)
            {
               // alert(id);
            }
            
  </script>
        <style>
         .profilepicture
         {
             position: relative;
             height: 92%;
         }
                     .text
            {
                position: relative;
                width: 50%;
                height: 35px;
                border-top-left-radius: 30px;
                border-bottom-left-radius: 30px;
                outline: 0px;
                padding-left: 10px;
            }
            .button
            {
                position: relative;
                width: 15%;
                height: 40px;
                border-top-right-radius: 30px;
                border-bottom-right-radius: 30px;
                
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
             #abc
            {
                min-height: 95%;
                position: relative;
                background-color: transparent;
            }
            
         .setting{
              position: relative;
              float: left;
               margin-left: auto;
               margin-right: auto;
               width: 100%;
               position: relative;
               
               background-color: transparent;
               border-bottom:solid #26e0ed;
         }
        .e, .d,.c,.b,.a{
             margin-top: 10px;
             width:95%;
             height: 35px;
             position: relative;
             border-bottom:solid darkred;
         }
        .a:hover
         {
             background-color: #d3d2d2; 
         }
         .b:hover
         {
             background-color: #d3d2d2; 
         }
         .c:hover
         {
             background-color: #d3d2d2; 
         }
         .d:hover
         {
             background-color: #d3d2d2; 
         }
         .e:hover
         {
             background-color: #d3d2d2; 
         }
         .profilecover
            {
                position: relative;
                margin-left: auto;
                margin-right: auto;
                width:95%;
                height: 300px;
                   
            }
            #profileCover
            {
                background-image: url("profilepic/blue.jpg");
                background-size: 100%;
            }
            #profilepic
            {
                
                position: relative;
                 background-image: url("profilepic/user.png");
                 background-color:  #26e0ed;
                 border-radius: 10%;
                background-size: 100%;
                position: relative;
                width:200px;
                height: 150px;
           margin-left: auto;
           margin-right: auto;
                
            }
            #button{
                background:  url("profilepic/cam.JPG");
                opacity: .5;
                position: relative;
                left: 10px;
                width: 25px;
                height: 25px;
                
            }
            .divregister
            {
                position: relative;
                width: 80%;
                height: 50%;
                margin-left: auto;
                margin-right: auto;
                top : 70px;
                left: 30px;
            }
             .user
            {
                position: relative;
                width: 300px;
                height: 22px;
                border-radius: 10px;
                padding-left: 20px;
                text-decoration-style: wavy;
                font-style:  italic;
                font-size: 16px;
                font-weight:  normal;
                text-decoration-color:  blue;
            }
             .user:hover
            {
                border: solid;
                border-left-color:  red;
            }
            #button1
            {
                width: 150px;
                height: 40px;
                outline: 2px;
                border-radius: 30px;
            }
            #button1:hover
            {
                border-top-color: black;
                border-bottom-color: black;
                border-left-color: red;
                border-right-color: red;
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
                       <li>  <a href="FILEUPLOADPAGE.jsp">Upload</a></li>
                        <li>  <a href="setting.jsp">Setting</a></li>
                         <li> <a href="logout.jsp">Log out</a></li>
                    <li><a href="contact.jsp">CONTACT</a></li>
                </ul>
            </div>
                      
        </div>     
        
       

        
        <div id="coverpicture" class="w3-container  profilepicture " >
           
          <div style="width:8%; height: 100% ; background-image: url('pics/side1.JPG'); background-size: 100%; position: relative; float: left; ">
          </div>
             <div id="abc"style="width:84%; height: 100%;  position: relative; float: left; ">
                        <div id="currentuser" class="setting" ><font size="6" color="#26e0ed">Settings:</font></div> 
                        <div style="position: relative; width: 20%; height: 92%; background-color: transparent; float: left; ">
                            
                        
                        <div id="B" class="b"><font size="4" color=" maroon"><input type="button" onclick="changepic()" value="Change Profile Pic:" style="position: relative; width:100%; background-color: transparent; height: 100%; border: 0px; font-size: 16px; " /></font></div>
                        
                 <!--       <div id="C" class="c"><font size="4" color=" maroon"><input type="button" onclick="updateAccount()" value="Update Account:" style="position: relative; width:100%; background-color: transparent; height: 100%; border: 0px; font-size: 16px; " /></font></div>
                  -->      
                        <div id="D" class="d"><font size="4" color=" maroon" >
                            
                            <input type="button" onclick="deleteac()" value="Delete Account:" style="position: relative; width:100%; background-color: transparent; height: 100%; border: 0px; font-size: 16px; " />
                           
                            </font></div>
                        <div id="E" class="e"><font size="4" color=" maroon"><input type="button" onclick="blockedList()" value="Blocked List:" style="position: relative; width:100%; background-color: transparent; height: 100%; border: 0px; font-size: 16px; " /></font></div>
                    </div>
                        
                        <div style="position: relative; width: 80%; height: 92%; background-color: #eef3f4; float: left; ">
                       <div id="profileCover" class="profilecover" hidden="hidden">
                                
                                 <div style="background-color: transparent; margin-left: auto; margin-right: auto; left: 0% ; position: relative; width:400px; top: 50px;   ">
                                        <table border='0px' width='100%'>
                                          <tr><td align='left'><div id="profilepic" class="profilepic">
                                           </div></td></tr>
                                             <tr><td align='left'><div><input type="button" id="button" onclick="setprofile()" onfocus="setprofilepic()">
                                            <iframe src="ChangeProfilePicSup.jsp" style=" background-color: transparent; outline: '0px'; " height="50px"  width="400px" id="set" hidden="hidden"></iframe></div></td></tr>
                                         </table>
                            
                                 
                                </div>
                            </div>
                            
             <!-- <div id="updateAccount" style="position: relative; overflow-y: auto; width: 100%; height: 100%; background-color:  #d3d2d2;" hidden="hidden">
                                  
                                <div id="divregister" class="divregister">
                                    
                        <center>
                            <div><h2>Update Account</h2></div>
                            <iframe src="EditYourProfile.jsp" width="700px" height="300px"></iframe>
                        </center>
                    </div>
              </div>  -->
                            
                            <div id="blockedlist" style="position: relative; overflow-y: auto; width: 100%; height: 100%; background-color:  #d3d2d2;" hidden="hidden">
                                
                            </div>
                            
                            
                          </div>
                    </div>
           
        </div>
    </body>
</html>
