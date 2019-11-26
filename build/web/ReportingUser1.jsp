<%-- 
    Document   : ReportingUser
    Created on : May 7, 2016, 12:37:16 PM
    Author     : PARUL JAISWAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
        <script type="text/javascript">
            
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
            alert();
            }
            
            
            
        </script>
        <style>
            
             .divbody
            {
                
                position: relative;
                margin-left: auto;
                margin-right: auto;
              background-image: url("pics/bc.jpg");
                border:solid silver;
                width: 100%;
                min-width: 500px;
              
                min-height:  900px;
               
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
             #abc
            {
                min-height: 770px;
                position: relative;
                background-color: white;
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
        </style>
    </head>
    <body  onload="userslist()">
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
                        
                    </div>
                     <div style="width:8%; height: 750px; background-image: url('pics/side21.jpg');background-size: 100%; position: relative; float: left; ">
                            
                        </div>
                     </div>
                        <div id="bottomborder" class="bottomborder">aBp ChitChat</div>
                </div>
            
              <input type="text" id="chat_with" />
            
            
            
            
            
            
            
            
        </div>
    </body>
</html>
