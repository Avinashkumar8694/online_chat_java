<%-- 
    Document   : setting
    Created on : Apr 17, 2016, 10:41:32 AM
    Author     : HP
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  -->
    <script type=  "text/javascript">
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
        function setprofile()
        {
            
            $("#set").toggle(400);
           
        }
       function setprofilepic()
            {
                
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
                alert(id);
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
                background-image: url("pics/bc.jpg");
                border:solid silver;
                width: 100%;
                min-width: 500px;
                min-height:  900px;
            }
           
       /*     .divbody:hover
            {
                border-color: black;
                outline: silver groove;
            }*/
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
            
         .setting{
              position: relative;
              float: left;
               margin-left: auto;
               margin-right: auto;
               width: 95%;
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
                width:100%;
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
                 border-radius: 50px;
                background-size: 100%;
                position: relative;
                width:200px;
                height: 150px;
           
                
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
    <body  onload="setprofilepic()">
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
                        <div id="currentuser" class="setting" ><font size="6" color="#26e0ed">Settings:</font></div> 
                        <div style="position: relative; width: 20%; height: 90%; background-color: aqua; float: left; ">
                            
                        
                        <div id="B" class="b"><font size="4" color=" maroon"><input type="button" onclick="changepic()" value="Change Profile Pic:" style="position: relative; width:100%; background-color: transparent; height: 100%; border: 0px; font-size: 16px; " /></font></div>
                        
                 <!--       <div id="C" class="c"><font size="4" color=" maroon"><input type="button" onclick="updateAccount()" value="Update Account:" style="position: relative; width:100%; background-color: transparent; height: 100%; border: 0px; font-size: 16px; " /></font></div>
                  -->      
                        <div id="D" class="d"><font size="4" color=" maroon" >
                            
                            <input type="button" onclick="deleteac()" value="Delete Account:" style="position: relative; width:100%; background-color: transparent; height: 100%; border: 0px; font-size: 16px; " />
                           
                            </font></div>
                        <div id="E" class="e"><font size="4" color=" maroon"><input type="button" onclick="blockedList()" value="Blocked List:" style="position: relative; width:100%; background-color: transparent; height: 100%; border: 0px; font-size: 16px; " /></font></div>
                    </div>
                        <div style="position: relative; width: 80%; height: 90%; background-color: #eef3f4; float: left; ">
                      
                            
                            
                            
                            
                            
                            <div id="profileCover" class="profilecover" hidden="hidden">
                                
                                 <div style="background-color: transparent; margin-left: auto; margin-right: auto; left: 10% ; position: relative; width:400px; top: 50px;   ">
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
                   
                    
                     <div style="width:8%; height: 750px; overflow-y: auto; background-image: url('pics/side21.jpg');background-size: 100%; position: relative; float: left; ">
                            
                        </div>
                     </div>
                        <div id="bottomborder" class="bottomborder">aBp ChitChat</div>
                </div>
                
               
                
                <input type="text" id="chat_with" hidden="hidden"/>
            </div>  
    </body>
</html>
