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
        <script type="text/javascript">
            
             (function () { 

  $(document).ready(function () {
      
      setInterval("countnotification()",2000);
      setInterval("countmsgnotification()",2000);
      setInterval("f2()",2000);
  });
             }.call(this));
      
  
        function hidediv()
        {
        f1();
         setprofilepic();
        }
        
        function setprofilepic()
            {
                currentuser();
                var url="getpic.jsp?";
                var xhr=new XMLHttpRequest();
                xhr.open("GET",url,true);
                xhr.onreadystatechange=function (){setprofileresponse(xhr);};
                xhr.send();
            }
         function    setprofileresponse(xhr)
            {
                if(xhr.readyState !=4)
                    return ;
                $("#profilepic").html(xhr.responseText);
            }
            
            function currentuser()
            {
                 var url="currentuser.jsp?";
                var xhr=new XMLHttpRequest();
                xhr.open("GET",url,true);
                xhr.onreadystatechange=function (){setcurrentuser(xhr);};
                xhr.send();
            }
            function    setcurrentuser(xhr)
            {
                if(xhr.readyState !=4)
                    return ;
                $("#username").html(xhr.responseText);
            }
            
            
            function deleteac()
        {
            
            var url;
            if(confirm("Delete Account.....?")==true)
            {
                 url="deleteuser.jsp?";
                
            
                var xhr=new XMLHttpRequest();
                xhr.open("GET",url,true);
                xhr.onreadystatechange = function (){deleteresponse(xhr);};
                xhr.send();
                        alert("Delete Success");
            }
        }
        function deleteresponse(xhr)
        {
            if(xhr.readyState!=4)
                return ;
        
        }
        
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
            //  var url = "chat_page.jsp?";
           // window.location =url;
           $("#notifbox1").toggle(1000);
           
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
  
   
  function f2()
            {
                
            var url="displaymessagenotification.jsp?";
      var xhr= new XMLHttpRequest();
      xhr.open("GET",url,true);
      xhr.onreadystatechange = function (){requestresponse1(xhr);};
      xhr.send();
  }       
             function requestresponse1(xhr)
  {
      if(xhr.readyState !=4)
          return ;
      $("#notification1").html(xhr.responseText);
  }
       
  </script>
        <style>
            #profilepic
            {
                width: 250px;
                height: 250px;
                background-color:  #bababa;
                border-radius: 10%;
            }
            .pfcentered {
            position: relative;
            top: 30%;
  
}
.frndrqstNo
{
     width: 45px;
     height: 45px;
    background-image: url("pics/notif.png");
    background-size: 100%;
     border-radius: 10%;
     position: absolute;
     right: 0px;
}
#messagecount
{
    background-image: url("pics/chat1.png");
    right: 60px;
}
 #nbar
            {
                width: 100%;
                height: 27px;
                background-color: gray;
            }
            #notification
            {
                width: 100%;
                height:330px;
                background-color: white;
                top: 5px;
                position: relative;
                float: left;
            }
             #notification1
            {
                width: 100%;
                height:330px;
                background-color: white;
                top: 5px;
                position: relative;
                float: left;
            }
 #notifbox
           {
               background-color: white;
               width: 210px;
               height: 370px;
               position: absolute;
               right:  10px;
               top:50px;
               border: solid black;
               overflow-y: auto;
           }     
           #notifbox1
           {
               background-color: white;
               width: 210px;
               height: 370px;
               position: absolute;
               right:  80px;
               top:50px;
               border: solid black;
               overflow-y: auto;
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
                       <li>  <a href="FILEUPLOADPAGE.jsp">Uplaod</a></li>
                        <li>  <a href="setting.jsp">Setting</a></li>
                         <li> <a href="logout.jsp">Log out</a></li>
                    <li><a href="contact.jsp">CONTACT</a></li>
                </ul>
            </div>
                      
        </div>     
        
       

        
      <div id="coverpicture" class="w3-container  profilepicture " 
           
           <!-- notification-->
          <div  id="count" class="frndrqstNo" onclick="hidenotif()"></div>
          <div  id="messagecount" class="messageNo frndrqstNo" onclick="sendchat()"></div>
           <div id ="notifbox" class="w3-container" hidden="hidden"  >
                <div id ="nbar" style="font-family: Algerian; font-size:4;" align="center">Notification </div>
                <div id ="notification"></div>
                
            </div>
          <div id ="notifbox1" class="w3-container" hidden="hidden"  >
                <div id ="nbar"  style="font-family: Algerian; font-size:4;" align="center">Notification </div>
                <div id ="notification1"></div>
                
            </div>
          
    <%--        <img src="img_fjords_wide.jpg" alt="Norway" style="width:100%;">  --%>
  <div  class="top-left"></div>
  
  <div class="bottom-left"></div>
  <div class="top-right"></div>
  <div id="username" class="bottom-right"> </div>
  
 <!-- <div id="profilepic" class= "w3-gray pfcentered w3-circle profilepic"></div>-->
   <div id="profilepic" class="divcentered"></div>

           
        </div>
    </body>
</html>
