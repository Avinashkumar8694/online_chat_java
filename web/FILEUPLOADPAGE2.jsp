<%-- 
    Document   : FILEUPLOADPAGE
    Created on : Apr 23, 2016, 1:11:03 AM
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
            
            
            (function () { 

  $(document).ready(function () { 
      setInterval("countnotification()",2000);
      setInterval("countmsgnotification()",2000);
       setInterval("getfileslist()",2000);   
      setInterval("userfileslist()",2000);   
         setInterval("Sharewith()",2000);

     $('#navbox-trigger').click(function () { 

       return $('#navigation-bar').toggleClass('navbox-open'); 

     }); 

     return $(document).on('click', function (e) { 

       var $target; 

       $target = $(e.target); 

       if (!$target.closest('.navbox').length && !$target.closest('#navbox-trigger').length) { 

         return $('#navigation-bar').removeClass('navbox-open'); 

       } 

     }); 

   }); 

 }.call(this)); 
var l=0; 

function setting()
 { if(l==0)
         {
     $("#Settingbox").slideDown(500);
    // $("#Settingbox").animate({left:150,top:150,width:0,height:0},1,5000);
        
         }
         else
            $("#Settingbox").slideUp(500);
              l=1-l;   
             
             
 }
 
function hidediv()
{
    
    $("#Settingbox").hide();
    setprofilepic();
}
            
             
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
    function setting()
 { if(l==0)
         {
     $("#Settingbox").slideDown(500);
    // $("#Settingbox").animate({left:150,top:150,width:0,height:0},1,5000);
        
         }
         else
            $("#Settingbox").slideUp(500);
              l=1-l;   
             
             
 }
 
function hidediv()
{
    
    $("#Settingbox").hide();
    setprofilepic();
}
         
  function  hidenotif()
    {
        
                $("#notifbox").toggle(1000);
          
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
          function f1()
            {
              
               
            var url="requestNotification.jsp?";
      var xhr= new XMLHttpRequest();
      xhr.open("GET",url,true);
      xhr.onreadystatechange = function (){requestresponse(xhr);};
   
      xhr.send();
                
            }
            function requestresponse(xhr)
  {
      if(xhr.readyState !=4)
          return ;
        
      $("#notifi").html(xhr.responseText);
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
        </script>
        <style>
            
            
               #divmain
            {
                background-color: white;
                position: relative;
                float: left;
                width: 100%;
                 height: 900px;
                min-height:  900px;
                border: solid black;
                background-size: 100%;
             background-image:url("pics/bc.jpg"); 
               
                 
            }
            .navigationbar
            {
                background-color: black;
                width: 100%;
                height: 30px;
                position: relative;
                 height: 50px; 

   position: relative; 

   z-index: 1000; 
                
            }
            
  .divbody
  {
      background-color: wheat;
      
      border-top-left-radius: 20px;
      border-top-right-radius: 20px;
      border-bottom-left-radius: 20px;
      border-bottom-right-radius: 20px;
      margin-left: 2.5%;
      margin-top: 20px;
       width:400px;
      height: 500px; 
      
      
  }
  #Uploaded
  {
      position: relative;
      float: left;
     
  }

 #Sharedwith
 {
      position: relative;
      float: left;
      width:400px;
      height: 500px; 
     
 }
 
 #Friendlist
 {
       position: relative;
      float: left;
      width:400px;
      height: 500px; 
     
 }
 
 .title
 {
     background-color: white;
     width: 100%;
     height: 35px;
     
     
      border-top-left-radius: 20px;
      border-top-right-radius: 20px;
      border-bottom-left-radius: 20px;
      border-bottom-right-radius: 20px;
      margin-top: 10px;
 }
 .divapp
 {
    
     width: 100%;
     height: 100px;
     
 }
 #up
 {
   background-color: #26e0ed;
     position: relative;
     float: left;   
     
 }
 #t1
 {
     position: relative;
     float: left;
 }
 #t2
 {
      position: relative;
     float: left;
 }
 #t3
 {
      position: relative;
     float: left;
 }
 
 .divapp
 {
     background-color: #eef3f4;
     width: 100%;
     height: 450px;
     
 }
 #sharedlist
 {
     background-color: #26e0ed;
     position: relative;
     float: left;   
     
 }
 #friends
 {
     background-color: #26e0ed;
     position: relative;
     float: left;   
     
 }
 
 #help
 {
     width: 99%;
     height: 500px;
     position: relative;
     
     background-color:transparent;
   border-bottom-left-radius: 30px;
   border-bottom-right-radius: 30px;
   border-top-left-radius: 30px;
   border-top-right-radius: 30px;

   margin-top: 10px;
   margin-left: 5px;
   margin-right: 10px;
  
 }
 #up
 {
     background-color: white;
     width: 100%;
     height: 100%;
     position: relative;
     float: left;
     overflow-y: auto;
   
    
   margin-left: 10px;
   margin-right: 10px;
    margin-bottom: 5px;
    border-left: solid black;
    border-top: solid black;
     border-bottom: solid black;
     border-right: solid black;
 }
 #sharedlist
 {
      background-color: white;
     width: 100%;
     height: 100%;
     position: relative;
     float: left;
     overflow-y: auto;
     
    
   margin-left: 10px;
   margin-right: 10px;
    margin-bottom: 5px;
     border-top: solid black;
      border-bottom: solid black;
      border-right: solid black;
 }
 #friends
   { border-top: solid black;
      background-color: white;
     width: 100%;
     height: 100%;
     position: relative;
     float: left;
     overflow-y: auto;
    
   margin-left: 10px;
   margin-right: 10px;
   margin-bottom: 5px;
   border-right: solid black;
   border-bottom: solid black;
  
 }
 #diverror
 {
     background-color: wheat;
     position: relative;
     float: left;
     width: 400px;
     height: 300px;
 }
  #divmain
            {
                background-color: aqua;
                position: relative;
                float: left;
                width: 100%;
                 height: 900px;
                min-height:  900px;
                border: solid black;
                 background-image:url("pics/bc.jpg"); 
                 
            }
             .navigation-bar { 
                 background-color: black;
                 width: 100%;

   height: 50px; 

   position: relative; 

   z-index: 1000; 

 } 
 #Fileup
 {
     
     position: relative;
     float: right;
     width: 50%;
     height: 100px;

     
 }
 .button
 {
     
     font-size: 4;
     font: Algerian;
     font: Algerian;
      text-align: center;
    width: 90px;
    height: 30px;
    
    
 }

 * { 

   margin: 0; 

   padding: 0; 

   font-size: inherit; 

   color: inherit; 

   box-sizing: inherit; 

   -webkit-backface-visibility: hidden; 

   backface-visibility: hidden; 

   -webkit-font-smoothing: antialiased; 

 } 

   

 *:focus { outline: none; } 

   

 html { box-sizing: border-box; } 

   

 a { text-decoration: none; } 

   

button { 

   background-color: transparent; 

   border: 0; 

   cursor: pointer; 

 } 
 .navigation-bar, .navigation-bar .navbox-tiles, .navbox-trigger, .navbox-tiles .tile, .navbox-tiles .tile .icon .fa, .navbox-tiles .tile .title { 

   -webkit-transition: all .3s; 

   transition: all .3s; 

 } 

   

 .navbox-tiles:after { 

 content: ''; 

   display: table; 

   clear: both; 

 }
 .navigation-bar { 

   height: 50px; 

   position: relative; 

   z-index: 1000;
  

 } 

   

 .navigation-bar .bar { 

   background-color: #252525; 

   width: 100%; 

   height: 100%; 

   position: absolute; 

   z-index: 2; 

 } 

   

 .navigation-bar .navbox { 

   visibility: hidden; 

   opacity: 0; 

   position: absolute; 

   top: 100%; 

   left: 0; 

   z-index: 1; 

   -webkit-transform: translateY(-200px); 

   -ms-transform: translateY(-200px); 

   transform: translateY(-200px); 
} 

   

 .navigation-bar.navbox-open .navbox-trigger { background-color: #484747; } 

   

 .navigation-bar.navbox-open .navbox { 

   visibility: visible; 

   opacity: 1; 

   -webkit-transform: translateY(0); 

   -ms-transform: translateY(0); 

   transform: translateY(0); 

   -webkit-transition: opacity .3s, -webkit-transform .3s; 

   transition: opacity .3s, transform .3s; 

 } 

   

 .navigation-bar.navbox-open .navbox-tiles { 

   -webkit-transform: translateY(0); 

   -ms-transform: translateY(0); 

   transform: translateY(0); 

 } 
 .navbox-trigger { 

   background-color: transparent; 

   width: 50px; 

   height: 50px; 

   line-height: 50px; 

   text-align: center; 

   -webkit-user-select: none; 

   -moz-user-select: none; 

   -ms-user-select: none; 

   user-select: none; 

 } 

   

 .navbox-trigger .fa { 

   font-size: 20px; 

   color: #fff; 

 } 

   

 .navbox-trigger:hover { background-color: #484747; } 

   

 .navbox { 

   background-color: #484747; 

   width: 100%; 

   max-width: 380px; 

   -webkit-backface-visibility: initial; 

   backface-visibility: initial; 

}

   

 .navbox-tiles { 

   width: 100%; 

   padding: 25px; 

 } 

   

 .navbox-tiles .tile { 

   display: block; 

   background-color: #3498db; 

   width: 30.3030303030303%; 

   height: 0; 

   padding-bottom: 29%; 

   float: left; 

   border: 2px solid transparent; 

   color: #fff; 

   position: relative; 

 } 
.navbox-tiles .tile .icon { 
   width: 100%; 

   height: 100%; 

   text-align: center; 

   position: absolute; 

   top: 0; 

   left: 0; 

 } 

   

 .navbox-tiles .tile .icon .fa { 

   font-size: 20px; 

   position: absolute; 
   top: 50%; 

   left: 50%; 

   -webkit-transform: translate(-50%, -50%); 

   -ms-transform: translate(-50%, -50%); 

   transform: translate(-50%, -50%); 

   -webkit-backface-visibility: initial; 

   backface-visibility: initial; 

 } 
.navbox-tiles .tile .title { 

   padding: 5px; 

   font-size: 12px; 

   position: absolute; 

   bottom: 0; 

   left: 0; 

 } 

   

 .navbox-tiles .tile:hover { 

   border-color: #fff; 

   text-decoration: none; 

 } 

 .navbox-tiles .tile:not(:nth-child(3n+3)) { 

  margin-right: 4.54545454545455%; 

 } 

   

 .navbox-tiles .tile:nth-child(n+4) { margin-top: 15px; } 

   

 @media screen and (max-width: 370px) { 
   

 .navbox-tiles .tile .icon .fa { font-size: 25px; } 


.navbox-tiles .tile .title { 

   padding: 3px; 

   font-size: 11px; 

 } 

   

 } 

            
     #messagecount
            {
                
                position: absolute;
                background-image: url("pics/chat1.png");
                background-size: 100%;
                width: 40px;
                height: 40px;
                background-color: transparent;
                float: left;
                left: 1177px;
               
               
            }
            #count
            {
                background-image: url("pics/notif.png");
                background-size: 100%;
                left: 1134px;
                position: absolute;
                width: 40px;
                height: 40px;
                background-color: transparent;
            }

 
  #notifbox
           {
               background-color: white;
               width: 210px;
               height: 370px;
               position: absolute;
               left: 1130px;
               top:40px;
               border: solid black;
               overflow-y: auto;
               
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
        </style>
    </head>
    <body>
        <div id="divmain">
        <div id="navigation-bar" class="navigation-bar">
                
                
            <div class="bar"> 
     <button id="navbox-trigger" style="background-image: url('pics/options.png'); background-size: 100%; background-color: white; opacity:.4; " class="navbox-trigger"> 

       <i class="fa fa-lg fa-th"></i> 

     </button> 
                <div  id="count" class="icon" onclick="hidenotif()"><i class="fa fa-file-image-o"></i></div> 
                <div  id="messagecount" class="icon"  onclick="showchat()"><i class="fa fa-file-image-o"></i></div> 

   </div> 

<div class="navbox"> 

     <div class="navbox-tiles"> 

         <a href="HOME.jsp" class="tile"> 

         <div class="icon"><i class="fa fa-home">Home</i></div> 

         

       </a> 

       <a href="ChatPage.jsp" class="tile"> 

         <div class="icon"><i class="fa fa-calendar">Chat</i></div> 

         

       </a> 

        

       <a href="FILEDOWNLOAD.jsp" class="tile"> 

         <div class="icon"><i class="fa fa-file-image-o">File Download</i></div> 

        
       </a> 

       <a href="searcuser.jsp" class="tile"> 

         <div class="icon"><i class="fa fa-cloud">Search User</i></div> 

        

       </a> 

      
          <a href="setting.jsp" class="tile"> 

         <div class="icon"><i class="fa fa-home">Setting</i></div> 

         

       </a>
         <a href ="DASHBOARD.jsp" class="tile"> 

         <div class="icon"><i class="fa fa-cloud">Dashboard</i></div> 

        

       </a>
          <a href="ReportingUser.jsp" class="tile"> 
         <div class="icon"><i class="fa fa-home">Chat History</i></div> 
         </a>
           <a href="logout.jsp" class="tile"> 

         <div class="icon"><i class="fa fa-cloud">Log Out</i></div> 

        

       </a> 

     </div> 

   </div>        
</div>      
       
        <div id ='help'>
          <div id ="notifbox" hidden="hidden" >
                <div id ="nbar" style="font-family: Algerian; font-size:4;" align="center">Notification </div>
                <div id ="notification"></div>
            </div>
          
            
<table  width="82%" height="500px">
             <tr><td width="30%" height="30px" align="center"><font face="Algerian" size="4" >Uploaded Files</font></td><td width="30%" height="30px"  align ="center"><font face="Algerian" size="4">SHARED WITH</font></td><td height="30px" width="30%" align="center"><font face="Algerian" size="4" align="center">CAN BE SHARED WITH</font></td></tr>
             <tr  ><td width="30%"><div id ="up"></div></td><td width="30%"><div id="sharedlist"></div></td><td width="30%"><div id ="friends"> </div></td></tr>
            </table>
                
            
            
        </div>
                        <div style="width: 50%;float: left;position: relative;">
                            <form action="submittedfilesto.jsp" method="Get">
                            <table width="100%" border="2">
                                <tr><td><font face="Algerian" size="4" >File No</font></td><td><input type="text" name ="filename1" id ="filename" /></td></tr>
                                <tr><td><font face="Algerian" size="4" >Share With</font></td><td><input  type="text" name ="Shareto1" id ="Shareto"  /><input type="Submit" value ="Share" class="button"/></td></tr>
                            </table>
                                </form>
                        </div>
                        <div id="Fileup" >
                            <form action="upload.jsp" enctype="multipart/form-data" method="post">
                            <table width="100%" border="2">
                                <tr><td><input type="file" name="filename" class="button"></td></tr>
                                <tr><td><input type="submit" class="button" ></td></tr>
                            </table>
                                </form>
                        </div>
                                  
                        
                       
                         </div>
    </body>
   
</html>







