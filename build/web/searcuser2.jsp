
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>search user</title>
        <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
        <script type="text/javascript">
            function searchuser()
            {
                
            
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
                .divbody
            {
                
                position: relative;
                margin-left: auto;
                margin-right: auto;
                background-color:#eef3f4;
                border:solid silver;
                width: 100%;
                min-width: 500px;
              
                min-height:  900px;
                 background-image:url("pics/bc.jpg"); 
               
            }
           
       
            .title
            {
                background-color:  #26e0ed;
                position: relative;
                margin-left: auto;
                margin-right: auto;
                border: solid #26e0ed;
                width: 100%;
                height: 7%;
            }
            .divmain
            {
                position: relative;
                
                margin-left: auto;
                margin-right: auto;
                top:5%;
          
                border-bottom: solid #26e0ed;
                width:80%;
                min-height: 87%;
               }
           .divmain:hover
            {               
                 
                outline: solid #26e0ed;
                border-bottom: solid black;
            }
           
            .leftborder
            {
                position: relative;
                background-color: brown;
                border-color: #130101;
                margin-left: auto;
                margin-right: auto;
                width:100%;
                height: 83%;
                float: left;
                border: solid #26e0ed;
                
            }
            #leftborder
            {
                background-color: #eef3f4;
            }
            
            .bottomborder
            {
                margin-right: auto;
                margin-right: auto;
                position: relative;
                background-color:  #1a0d19;
                height: 4%;
                width: 100%;
                float: left;
           
            }
            #head
            {
               
               background-color:  #d3d2d2;
                width: 98.6%;
             
                position: relative;
                margin-left:  auto;
                margin-right:  auto;
                margin-top: auto;
                margin-bottom: auto;
             
                padding-left: 10px;
                padding-right: 10px;
                padding-top: 10px;
               
            }
            #abc
            {
                min-height: 770px;
                position: relative;
                background-color: white;
            }
        </style>
    </head>
    <body>
    <div id="divbody" class="divbody">
            <div id="divmain" class="divmain">
                
                <div id="title" class="title"><table border="0px" >
                        <tr><td width="10%" align='left'><img src='pics/chitchat.JPG' alt='Welcome ChitChat online Chat' title='Welcome ChitChat online Chat' height="45px" width="70px"/></td><td width="30%" align="center"><h2><font size="6" color="white">Welcome To aBp ChitChat</font></h2></td><td id="menuUpload" class="menuUpload" width="5%" float="right"><form action="DASHBOARD.jsp" method="Post"><font size="4" color="white"><input type="submit" value="Home" /></font></form></tr>
                        </table>
                </div>
                
                
                <div id="leftborder" class="leftborder" >
                     <div style="width:8%; height: 750px; background-image: url('pics/side1.JPG'); background-size: 100%; position: relative; float: left; ">
                            
                        </div>
                    <div id="abc"style="width:84%; height: 700px;  position: relative; float: left; ">
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
   <div style="width:8%; height: 750px; background-image: url('pics/side21.jpg');background-size: 100%; position: relative; float: left; ">
                            
                        </div>
                     </div>
                        <div id="bottomborder" class="bottomborder">aBp ChitChat</div>
                </div>
                 <input type="text" id="chat_with" hidden="hidden"/>
            </div>  
         </body>
</html>
