<%-- 
    Document   : login
    Created on : Jan 19, 2018, 1:18:11 AM
    Author     : Avinash
--%>
<%
    if(session.getAttribute("User")==null)
       
        response.sendRedirect("LOGIN/login.jsp");
     
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
      
      setInterval("getfileslist()",2000);   
      setInterval("userfileslist()",2000);   
         setInterval("Sharewith()",2000);
      
  });
             }.call(this));
      function getfileslist()
            {
                var url = "getfileslist.jsp?";
                var xhr= new XMLHttpRequest();
               
                xhr.open("GET",url,true);
                xhr.onreadystatechange = function (){getfilelistresponse(xhr);};
                xhr.send();
            }
            function getfilelistresponse(xhr)
            {
                if(xhr.readyState!=4)
                    return;
                $("#up").html(xhr.responseText);
            }
             function Sharewith()
    {
    var url = "Sharewithlist.jsp?";
    var xhr= new XMLHttpRequest();
    xhr.open("GET",url,true);
    xhr.onreadystatechange = function (){Sharewithlistresponse(xhr);};
    xhr.send();
    }
    
    function Sharewithlistresponse(xhr)
    {
       if(xhr.readyState!=4)
                    return;
              $("#sharedlist").html(xhr.responseText); 
    }
     function userfileslist()
            {   
                var url = "fileshareuserlist.jsp?";
                var xhr= new XMLHttpRequest();
               
                xhr.open("GET",url,true);
                xhr.onreadystatechange = function (){userfilelistresponse(xhr);};
                xhr.send();
            }
            function userfilelistresponse(xhr)
            {
                if(xhr.readyState!=4)
                    return;
                $("#friends").html(xhr.responseText);
            }
            
            function sharethis(fileno)
    {
        
        $("#filename").val(fileno);
    }
    
    function Removethis(fileno)
            {
                
                var url = "removefiles.jsp?fileno=" + fileno;
                
                var xhr = new XMLHttpRequest();
                xhr.open("GET",url, true);
               
                xhr.onreadystatechange = function (){removethisresponse(xhr);};
            
                xhr.send();
                
            }
            function removethisresponse(xhr)
            {
                if(xhr.readyState !=4)
                     return;
                 alert("Are you sure to Delete file")
             $("#diverror").html(xhr.responseText);
            }
            function sharetoo(user)
    {
        
        $("#Shareto").val(user);
    }
  
        
        
         
  </script>
        <style>
           
    .profilepicture
         {
             position: relative;
             height: 92%;
         }
            
 #nbar
            {
                width: 100%;
                height: 27px;
                background-color: gray;
            }
 #sharedlist
 {
     background-color: #26e0ed;
     position: relative;
     float: top;   
     
 }
 #filess
 {
     height: 450px;
     overflow-y: scroll;
 }
#upload
{
    position: relative;
    width: 150px;
}
        </style>
    </head>
    <body onload="">
        
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
        
       

        
      <div id="coverpicture" class="w3-container  profilepicture  " 
           
           <!-- notification-->
          
          
           
           <div class="w3-container " id="filess">
           <div align="center" class="w3-third ">
               <div class="w3-container"><font face="Algerian" size="4" >Uploaded Files</font></div>
               <div id ="up"></div>
          </div>
           <div align="center" class="w3-third ">
               <div class="w3-container"><font face="Algerian" size="4" >Shared with</font></div>
               <div id="sharedlist"></div>
          </div>
           <div align="center" class="w3-third ">
               <div class="w3-container"><font face="Algerian" size="4" >share with</font></div>
               <div id ="friends"> </div>
          </div>
  
            </div> 
           <div class="w3-container" >
               <div class="w3-container w3-half" style="float: left;position: relative;">
                            <form action="submittedfilesto.jsp" method="Get">
                            <table width="100%" border="2">
                                <tr><td><font face="Algerian" size="4" >File No</font></td><td><input type="text" name ="filename1" id ="filename" /></td></tr>
                                <tr><td><font face="Algerian" size="4" >Share With</font></td><td><input  type="text" name ="Shareto1" id ="Shareto"  /><input id="upload" type="Submit" value ="Share" class="button"/></td></tr>
                            </table>
                                </form>
                        </div>
               <div class="w3-container w3-half" id="Fileup" >
                            <form action="upload.jsp" enctype="multipart/form-data" method="post">
                            <table width="100%" border="2">
                                <tr><td height="20px"><input type="file" name="filename" class="button"></td></tr>
                                <tr><td><input id="upload" value="Upload" type="submit" class="button" ></td></tr>
                            </table>
                                </form>
                        </div>
          </div>
           
        </div>
    </body>
</html>
