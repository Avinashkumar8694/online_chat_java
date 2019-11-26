<%-- 
    Document   : ProjectTheme
    Created on : Apr 23, 2016, 10:54:11 PM
    Author     : PARUL JAISWAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <script type="text/javascript" src ="js/jquery-1.11.1.min.js"></script>
        <script type="text/javascript">
            
            
            (function () { 

  $(document).ready(function () { 
      setInterval("countnotification()",2000);
      setInterval("countmsgnotification()",2000);

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
            
function requestresponse(xhr)
  {
      if(xhr.readyState !=4)
          return ;
      $("#noti").html(xhr.responseText);
  }
  
  var n=0;        
    function f1()
            {
                if(n==0)
                {
                $("#noti").slideDown(3000);
            var url="requestNotification.jsp?";
      var xhr= new XMLHttpRequest();
      xhr.open("GET",url,true);
      xhr.onreadystatechange = function (){requestresponse(xhr);};
      xhr.send();
                }
            else
                $("#noti").slideUp(3000);
            n=1-n;
                //document.getElementById("d").focus();
      //         $("#noti").toggle(3000); 
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
        function  showdownloded()
        { 
            var url = "Downloadedfile.jsp?";
          var xhr=new XMLHttpRequest();
                xhr.open("GET",url,true);
               
                xhr.onreadystatechange = function (){showdownloadresponse(xhr);};
                xhr.send();
            
        }
        function  showdownloadresponse(xhr)
        {    
             if(xhr.readyState !=4)
                    return ;
                $("#filedownload").html(xhr.responseText);
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
                background-color: aqua;
                position: relative;
             
                width: 99%;
                 height: 660px;
              
                border: solid black;
                background-image:url("pics/bc.jpg"); 
                margin-left: 10px;
                margin-right: 10px;
                background-size: 100%;
                 
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

            
      #Setting
      {
          
          position: relative;
          float: right;
          width: 50px;
        
          -webkit-backface-visibility: initial; 

   backface-visibility: initial; 
      }

#Settingbox
{  
    position: absolute;
   left: 72%;
    
    float: right;
     background-color: #484747; 

   width: 50%; 

   max-width: 380px; 

   -webkit-backface-visibility: initial; 

   backface-visibility: initial;
}

.option
{   position: relative;
  
 margin-top: 35px;
    background-color: white;
    width:150px;
    height: 20px;
} 
#noti
           {
           position: absolute;
           background-color: transparent;
           opacity: .7;
           width: 350px;
           height: 270px;
           left: 70%;
           overflow:auto;
           }
            .profilecover
            {
                position: relative;
                margin-left: auto;
                margin-right: auto;
                width:99%;
                height: 92%;
               background-color: #3498db;  
                   
            }
            #filedown
            {
                background-color: #fff;
                width: 200px;
                height: 200px;
                position: relative;
                float: left;
            }
           
           #divmain1
            {
                background-color: aqua;
                position: relative;
                float: left;
                width: 100%;
                 height: 600px;
               
                border: solid black;
              background-image:url("pics/bc.jpg"); 
                 
            }  
              #Setting
      {
          
          position: relative;
          float: right;
          width: 50px;
        
          -webkit-backface-visibility: initial; 

   backface-visibility: initial; 
      }
     #help
 {
     width: 99%;
     height: 500px;
     position: relative;
     
     background-color:transparent;
   
   margin-top: 10px;
   margin-left: 5px;
   margin-right: 10px;
  
 }
 #filedownload
 {
      width:40%;
     height: 500px;
     position: relative;
     
     background-color: white;
  
   margin-left: auto;
   margin-right: auto;
   border: solid black;
  
 }
  #messagecount
            {
                
                position: absolute;
                background-image: url("pics/chat1.png");
                background-size: 100%;
                width: 40px;
                height: 40px;
                background-color: transparent;
                float: right;
                top:55px;
                left: 1160px;
                
              
              
               
               
               
            }
            #count
            {
                background-image: url("pics/notif.png");
                background-size: 100%;
             
                position: absolute;
                width: 40px;
                height: 40px;
                background-color: transparent;
                 top:55px;
                 left: 1116px;
            }

 
  #notifbox
           {
               background-color: white;
               width: 210px;
               height: 370px;
               position: absolute;
               left: 1100px;
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
    <body onload="showdownloded()">
        <div id="divmain" class="divmain">
            
           
            <div id="navigation-bar" class="navigation-bar">
                
                
            <div class="bar"> 
                <button id="navbox-trigger" style="background-image: url('pics/options.png'); background-color: white; opacity:.4;background-size: 100%; " class="navbox-trigger"> 

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

       <a href="FILEUPLOADPAGE.jsp" class="tile"> 

           <div class="icon"><i class="fa fa-envelope-o">File Upload</i></div> 
           

       </a> 

      

       <a href="searcuser.jsp" class="tile"> 

         <div class="icon"><i class="fa fa-cloud">Search User</i></div> 

        

       </a> 
          

       

       
                    <a onclick="deleteac()" class="tile"> 

         <div class="icon"><i class="fa fa-cloud">Delete Account</i></div> 

        

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
   <a href ="logout.jsp" class="tile"> 

         <div class="icon"><i class="fa fa-cloud">Log Out</i></div> 

        

       </a>  

     </div> 

   </div>        
</div>          
            
        <div id="profileCover" class="profilecover">
             <div id ="Settingbox" hidden="hidden" >
                <div class="navbox-tiles">
                    <a href="" class="tile"> 

         <div class="icon"><i class="fa fa-home"></i></div> 

         <span class="title">Change Profile Picture</span> 

       </a> 
                    <a href="EditYourProfile.jsp" class="tile"> 

         <div class="icon"><i class="fa fa-calendar"></i></div> 

         <span class="title">Edit Your Profile</span> 

       </a> 

       <a href="FriendList.jsp" class="tile"> 

           <div class="icon"><i class="fa fa-envelope-o"></i></div> 
           <span class="title">Message Notification</span> 

       </a> 

       <a href="DisplayNoti.jsp" class="tile"> 

         <div class="icon"><i class="fa fa-file-image-o"></i></div> 

        <span class="title">Friend Request Notification</span> 

       </a> 

                    <a onclick="deleteac()" class="tile"> 

         <div class="icon"><i class="fa fa-cloud"></i></div> 

        <span class="title">Delete</span> 

       </a> 
   <a href="logout.jsp" class="tile"> 

         <div class="icon"><i class="fa fa-cloud"></i></div> 

        <span class="title">Log Out</span> 

       </a> 
</div>
             </div>
            
            
            <div id ="divmain1">
                
                
                <div id ='help'>
                
                
                <table  width="80%" height="500px">
<tr><td width="80%" height="30px" align="center"><font face="Algerian" size="4" >DOWNLOAD FILES</font>
   </td></tr>
<tr><td><div id ="filedownload" ></div></td></tr>
                </table>
                 
<div id ="notifbox" hidden="hidden"  >
                <div id ="nbar" style="font-family: Algerian; font-size:4;" align="center">Notification </div>
                <div id ="notification"></div>
            </div>
                 
                 
                 
                
             </div>   
                </div>
            
            

                
            
            
        </div>
                
            </div>
             
             
             
            
           
     
            
        
    </body>
</html>
