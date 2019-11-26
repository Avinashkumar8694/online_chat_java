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
          function sendMessage()
            {
               
                var receiver=$("#chat_with").val();
                var msg=$("#message").val();
                var url="InsertMsgDown.jsp?message=" + msg + "&receiver=" + receiver;
                var xhr=new XMLHttpRequest();
                xhr.open("GEt",url,true);
                xhr.onreadystatechange=function (){sendMessageResponse(xhr);};
                xhr.send();
            }
            function sendMessageResponse(xhr)
            {
                if(xhr.readyState!=4)
                    return ;
                
            }
  </script>
        <style>
           
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
           .left{
                position: relative;
                
                background-color: #eae9eb;
                width:30%;
                margin-left:10px;
             
                height: 700px;
                overflow-y: auto;
                float: left;
                left:1%;
            }
            .center
            {
                position: relative;
                 margin-left: auto;
                margin-right: auto;
                 position: relative;
                 background-color: #ffffff;
                width:45%;
                left:2%;
                height: 700px;
                float: left;
               // overflow-y: scroll;
       /*    overflow: hidden;*/
            }
            .right
            {
                margin-left: auto;
               margin-right: auto;
                position: relative;
                background-color: #eae9eb;
                width:29%;
                left: 5px;
                height: 100%;
                float: left;
            }
            .activeuserdivtitlename{
               margin-left: auto;
               margin-right: auto;
               width: 95%;
               position: relative;
               float:left;
               background-color:transparent;
         
               border-bottom:solid #26e0ed;
               
               
            }
            .friendlistdivtitlename{
               margin-left: auto;
               margin-right: auto;
               width: 95%;
               position: relative;
               top: 10px;
               float: left;
               background-color: transparent;
          
               border-bottom:solid #26e0ed;
            }
            
            .activeuserdivtitlename:hover
            {
                border-bottom-color: greenyellow;
            }
            .friendlistdivtitlename:hover{
                 border-bottom-color: greenyellow;
            }
            .diverrors
            {
                
                margin-left: auto;
               margin-right: auto;
               width: 95%;
               max-height: 300px;
             /*  overflow-y: scroll;*/
               position: relative;
               float:center;
               
            }
            
            #friendlistdivtitlename
            {
                top: 10px;
                 border-bottom:solid #26e0ed;
                 background-color:transparent;
                 height: 45%;
                 overflow-y: auto;
                 
            }
            .currentuserimage
            {
                background-color: transparent;
                margin-left: auto;
               margin-right: auto;
               width: 95%;
               position: relative;
               top: 10px;
               float: left;
               min-height: 160px;
               //max-height: 300px;
               
             
            }
            .aBpuser
            {
                margin-left: auto;
               margin-right: auto;
               width: 95%;
               height: 50px;
               position: relative;
               top: 10px;
               float: left;
               background-color: transparent;
            //  background-color:  #eaaee2;
               border-bottom:solid #26e0ed;
            }
            .centerdiv
            {
                
                 margin-left: auto;
               margin-right: auto;
               width: 95%;
               height: 67.8%;
               top: 10px;
               position: relative;
            /*  overflow-y: scroll;*/
               
               float: left;
               background-color: transparent;
            /*  background-color:  #eaaee2;*/
               border-bottom:solid #26e0ed;
                
            }
            #centerdiv2
            {
                background-color:  transparent;
            }
           
            .user1
            {
                position: relative;
                width: 68%;
                height: 34px;
           /*     border-radius: 10px;*/
                 
                
                border-top-left-radius: 30px;
                border-bottom-left-radius: 30px;
                padding-left: 20px;
                text-decoration-style: wavy;
                font-style:  italic;
                font-size: 16px;
                font-weight:  normal;
                text-decoration-color:  blue;
                float: center;
            }
             .user:hover
            {
                border: solid;
                border-left-color: transparent;
            }
            .divmessages
            {
                position: relative;
                width: 97%;
                height: 400px;
                overflow-y: auto;
                top: 15px;
                float: left;
                margin-left: 12px;
                overflow-y: scroll;
            }
            .uploadfiles
            {
                margin-left: auto;
                margin-right: auto;
                left: 10px;
                width: 95%;
                height: auto;
                position: relative;
                float: left;
                background-color: antiquewhite;
               border-width: 0px;
            }
            #hideuploadfiles
            {
                
                left: 10px;
            }
            #msgnoti
            {
                 position: relative;
         
        
        margin-left: 85%;
        
          -webkit-backface-visibility: initial; 
background-color: green;
   backface-visibility: initial; 
            }
            
            
            .leftborder
            {
                position: relative;
                background-color: transparent;
                border-color: #130101;
                margin-left: auto;
                margin-right: auto;
                width:90%;
                height: 99%;
                float: left;
                
            }
          .maincontent
          {
              position: relative;
              height: 92%;
          }
          #chat_with
          {
              display: none;
          }
          #message
          {
              width: 100%;
          }
          .button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    margin: 4px 2px;
    cursor: pointer;
}
.button1 {font-size: 10px; position: relative;}
#messagesend
{
    top: 50px;
    position: relative;
}
#activeuserdivtitlename
{
    position: relative;
}
        </style>
    </head>
    <body onload="hidediv()">
        
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
        
       

        
      <div id="coverpicture" class="w3-container  maincontent"> 
           
           <!-- notification-->
          <div  id="count" class="frndrqstNo" onclick="hidenotif()"></div>
          <div  id="messagecount" class="messageNo frndrqstNo" onclick="sendchat()"></div>
           <div id ="notifbox" class="w3-container" hidden="hidden"  >
                <div id ="nbar" style="font-family: Algerian; font-size:4;" align="center">Notification </div>
                <div id ="notification"></div>
            </div>
          
          <div id="leftborder" class="leftborder" >
              <div id="left" class="left">

                     <div id="currentuser" class="activeuserdivtitlename" onclick="hidecurrentuser()"><table boder="0" width="100%"><tr><td style=" font-size: 30px; color:#26e0ed;";>Me:</td></tr></table></div> 
                        <div id="currentuserimage" class="currentuserimage" ></div>

                         <div id="activeuserdivtitlename" class="activeuserdivtitlename" onclick="hideactiveuser()"  style=" font-size: 30px; color:#26e0ed;";>Active Users<input type="button" style='background-image:  url("pics/refresh.jpg"); background-size: 100%; opacity: .4; width:20px; height: 20px; ' onclick="Activity()"></div>                        
                        <div id="diverrors" class="diverrors" hidden="hidden" ></div>
                        <div id="friendlistdivtitlename1" class="friendlistdivtitlename"  onclick="hidefriendlist()" style=" font-size: 30px; color:#26e0ed;";>Friends<input type="button" style='background-image:  url("pics/refresh.jpg"); background-size: 100%; opacity: .4; width:20px; height: 20px; ' onclick="friendlist()"></div>        
                        <div id="friendlistdivtitlename" class="activeuserdivtitlename" hidden="hidden"></div>
                  
                 </div>
              <div id="center" class="center w3-container " hidden="hidden" >
                     
                        <div id="curentuser" class="activeuserdivtitlename" onclick="hideactiveuser()">  <table border="0px" width="100%;"><tr><td  style=" font-size: 30px; color:#26e0ed;";>User:</td><td align="right"><input type="button" style=" background-color: transparent; opacity: .8; width:33px; height: 33px; background-image: url('pics/settings.png'); background-size: 100%;" onclick="usersetting()"></td></tr></table></div> 
                            <div id="divchatto"  class="currentuserimage" style=" border-bottom: solid #26e0ed; "></div>
                            
                        <!--    <div id="centerdiv1" class="centerdiv"></div> -->
                      
                        <div style="position: relative; top: 12px;" class="w3-row">
                            <div class=" w3-container w3-threequarter">
                                 <textarea name="message" id="message" required="required" class="form-control" style="min-height: 50px;" placeholder="Message"></textarea>
                             </div>
                             <div class="w3-container w3-quarter">
                                 <input type ="button" id ="button1" class="button button1" value ="SEND" onclick="sendMessage()"/>
                              </div>
                        </div>
                        <div><div id="divmessages" style=" " class="divmessages"></div></div>
                        <div id="usersetting" style="top:15px; position: relative; width: 97%; alignment-adjust: central;" hidden ="hidden" style="width:100%; height: 50px; background-color: transparent; position: relative; float: left;">
                            <center>     <table  border="0px" width="100%" height="100%">
                                      <tr><td align="right"  height="100%"><input type="button" value="Unfriend" onclick="unfriend()" class="button button1"></td><td align="left"><input type="button" class="button button1"value="Block" onclick="block()"></td></tr>
                                    
                                </table></center>
                            </div>
                            
                            <div></div>    
                    </div>
          </div>  
        </div>
       
    </body>
</html><input type="text" id="chat_with" />
