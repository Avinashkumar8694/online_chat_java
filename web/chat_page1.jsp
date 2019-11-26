<%-- 
    Document   : ChatPage
    Created on : Apr 25, 2016, 10:44:41 AM
    Author     : PARUL JAISWAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
             <script type="text/javascript" src ="js/jquery-1.11.1.min.js"></script>
             <script type="text/javascript" src ="js/chatquery.js"></script>
    <%--       <script type="text/javascript">
            
            
            (function () { 

  $(document).ready(function () { 
       setInterval("getMessages()",1000);   
           setInterval("getfileslist()",15000);
           setInterval("countmsgnotification()",2000);
            setInterval("countnotification()",2000);

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
   
        
         }
         else
            $("#Settingbox").slideUp(500);
              l=1-l;   
             
             
 }
 
function hidediv()
{
    currentuserimage();
    friendlist();
    setprofilepic();
    f1();
    f2();
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
        
        /* chat page method*/
        
        function currentuserimage()
            {
               
            var url ="dispCurrentimage.jsp?";
            
             var xhr = new XMLHttpRequest();
            xhr.open("GET",url,true);
           
            xhr.onreadystatechange=function (){currentuserimageresponse(xhr);};
                xhr.send();
            }
            
            function currentuserimageresponse(xhr)
            {
                if(xhr.readyState!=4)
                    return ;
                $("#currentuserimage").html(xhr.responseText);
            
            }
            
            function getMessages()
            {
                var receiver=$("#chat_with").val();
                var url="getchatmessages.jsp?receiver=" + receiver;
                var xhr=new XMLHttpRequest();
                xhr.open("GET",url,true);
                xhr.onreadystatechange=function (){getMessagesResponse(xhr);};
                xhr.send();
                
            }
           function getMessagesResponse(xhr)
           {
               if(xhr.readyState!=4)
                   return;
            $("#divmessages").html(xhr.responseText);
            
           }
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
            
            function selectChatUser(id)
            {
              
                $("#chat_with").val(id);
            //    $("#Shareto").val(id);
          $("#center").show(1000);
             $("#messagesend").show(1000);
            $("#center").show(1000);
                var chat_to = $("#chat_with").val();
                
                var url = "chatto.jsp?chatto=" + chat_to;
                var xhr = new XMLHttpRequest();
                xhr.open("GET",url,true);
                xhr.onreadystatechange= function (){Activityresponce(xhr);};
                
                xhr.send();
            }
            function Activityresponce(xhr)
            {
             if(xhr.readyState!=4)
             return;
            $("#divchatto").html(xhr.responseText);
            }
            
            function gotochatbox(id)
            {
                // alert(id);
                $("#chat_with").val(id);
            //    $("#Shareto").val(id);
            $("#centerdiv1").hide(1000);
             $("#centerdiv2").show(1000);
            
         /*       var chat_to = $("#chat_with").val();
                
                var url = "chatto.jsp?chatto=" + chat_to;
                var xhr = new XMLHttpRequest();
                xhr.open("GET",url,true);
                xhr.onreadystatechange= function (){Activityresponce(xhr);};
                
                xhr.send();
           */     
            }
            function Activityresponce(xhr)
            {
             if(xhr.readyState!=4)
             return;
            $("#divchatto").html(xhr.responseText);
            }
            
            
            function Activity()
            {
                
            var url ="friendlisttest.jsp?";
            
             var xhr = new XMLHttpRequest();
            xhr.open("GET",url,true);
           // alert();
            xhr.onreadystatechange=function (){LastActivity(xhr);};
                xhr.send();
            }
            
            function LastActivity(xhr)
            {
                if(xhr.readyState!=4)
                    return ;
                $("#diverrors").html(xhr.responseText);
            }
            
            function Chatting()
            {
                var msg = $("#message").val();
      var url ="Insert_msg_down.jsp?message=" +msg;
      var xhr1 = new XMLHttpRequest();
      xhr1.open("GET", url, true);
      xhr1.onreadystatechange=function(){Chat_User_with(xhr1);};
      xhr1.send();
  }
      function Chat_User_with(xhr1)
      {
         if(xhr1.readyState!=4)
                    return ;
                $("#diverrors1").html(xhr1.responseText);
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
                $("#contentLeft").html(xhr.responseText);
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
                
             $("#diverror3").html(xhr.responseText);
            }
            
            function hideactiveuser()
            {
                $("#diverrors").toggle(500);
            }
            
            
            var l=0;
            function hidefriendlist()
            {
            
                if(l%2==0)
                    {
                        $("#friendlistdivtitlename").slideDown(1000);
                    }
                    else
                       $("#friendlistdivtitlename").slideUp(1000);
                         l++;
                       
            }
            function hidecurrentuser()
            {
                $("#currentuserimage").toggle(500);
            }
            
            
            function friendlist()
            {
                
            var url ="currentusersfriendlist.jsp?";
            
             var xhr = new XMLHttpRequest();
            xhr.open("GET",url,true);
           
            xhr.onreadystatechange=function (){friendlistresponse(xhr);};
                xhr.send();
            }
            
            function friendlistresponse(xhr)
            {
                if(xhr.readyState!=4)
                    return ;
                $("#friendlistdivtitlename").html(xhr.responseText);
            }
            function unfriend()
            {   
              var url;
            if(confirm("You are sure to unfriend....?")==true)
                 {
                 var receiver=$("#chat_with").val();
                 alert(receiver);
                 var url ="unfriend.jsp?user=" + receiver;
                   
                var xhr = new XMLHttpRequest();
            xhr.open("GET",url,true);
              alert();
            xhr.onreadystatechange=function (){unfriendresponse(xhr);};
                xhr.send();
                  }   
                

            }
            function unfriendresponse(xhr)
            {
                if(xhr.readyState!=4)
                    return ;
            }
            function un()
            {
                alert();
            }
            function block()
            {
                var url;
                if(confirm("You are sure to block....?")==true)
                 {
                  var receiver=$("#chat_with").val();
                 var url ="blockuser.jsp?user=" + receiver;
            
             var xhr = new XMLHttpRequest();
            xhr.open("GET",url,true);
           // alert();
            xhr.onreadystatechange=function (){blockresponse(xhr);};
                xhr.send();
            }
                  }   
                
                
                
                
                
                
                
                
                
                
                
                
               
            function blockresponse(xhr)
            {
                if(xhr.readyState!=4)
                    return ;
                
            }
            function usersetting()
            {
                $("#usersetting").toggle(200);
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
   
              $("#msgnoti").html(xhr.responseText);
          }
          var m=0;
   function f2()
            {
                if(m==0)
                {
                $("#messagenoti").slideDown(1000);
            var url="displaymessagenotification.jsp?";
      var xhr= new XMLHttpRequest();
      xhr.open("GET",url,true);
      xhr.onreadystatechange = function (){requestresponse1(xhr);};
      xhr.send();
                }
            else
                $("#messagenoti").slideUp(1000);
            m=1-m;
                //document.getElementById("d").focus();
      //         $("#noti").toggle(3000); 
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
        </script>    --%>
         <style>
            #divmain1
            {
                background-color: aqua;
                position: relative;
             
                width: 100%;
                 height: 1000px;
              
                border: solid black;
                background-image:url("pics/bc.jpg"); 
                
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
                height: 93%;
               background-color: transparent;
                   
            }
            
            
            /* chat page styles*/
            
            .divbody
            {
                
                position: relative;
                margin-left: auto;
                margin-right: auto;
                background-color:#eef3f4;
                border:solid silver;
                width: 100%;
                min-width: 100%;
                height: 1000px;
                min-height:  1000px;
                
            }
           
       .divmain
            {
                position: relative;
                
                margin-left: auto;
                margin-right: auto;
              
               
                width:100%;
                height: 100%;
                min-height: 90%;
                background-color: transparent;
               
                
            }
            .title
            {
                background-color:  #26e0ed;
                position: relative;
                margin-left: auto;
                margin-right: auto;
                
                width: 100%;
                height: 7%;
            }
           
           
            .leftborder
            {
                position: relative;
                background-color: transparent;
                border-color: #130101;
                margin-left: auto;
                margin-right: auto;
                width:100%;
                height: 99%;
                float: left;
                
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
            .left{
                position: relative;
                
                background-color: #eae9eb;
                width:37%;
                margin-left:10px;
             
                height: 100%;
                overflow-y: auto;
                float: left;
                left:1%;
            }
            .center
            {
                 margin-left: auto;
                margin-right: auto;
                 position: relative;
                 background-color: #ffffff;
                width:45%;
                left:1%;
                height: 98%;
                float: left;
                overflow-y: scroll;
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
                 height: 600px;
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
               height: 160px;
               max-height: 300px;
               
             
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
            #button1
            {
                width: 30%;
                height: 35px;
                outline: 2px;
                background-color: transparent;
             /*  border-radius: 30px;*/
             border-top-right-radius: 30px;
                border-bottom-right-radius: 30px;
                
            }
            #button1:hover
            {
                border-top-color: black;
                border-bottom-color: black;
                border-left-color: red;
                border-right-color: red;
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
                width: 100%;
                height: 85%;
                overflow-y: auto;
                float: left;
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
            
             .button
            {
                display: inline-block;
                padding: 15px 25px;
                font-size: 18px;
                cursor: pointer;
                text-align: center;
                text-decoration: none;
                outline: none;
                color: #fff;
                background-color: activecaption;
                border:none;
                border-radius: 15px;
                box-shadow: 0 5px #999;
                font-family: Algerian;
            }
            .button:active
            {
                background-color: #bababa;
                box-shadow: 0 5px #666;
                transform: translateY(4px);
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
                left: 1170px;
               
               
            }
            #count
            {
                background-image: url("pics/notif.png");
                background-size: 100%;
                left: 1128px;
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
               left: 1120px;
               top:50px;
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
    <body onload="hidediv()">
        <div id="divmain1" >
            
           
            <div id="navigation-bar" class="navigation-bar">
                 <div class="bar"> 
                      <button id="navbox-trigger" style="background-image: url('pics/options.png'); background-color: white; opacity:.4;background-size: 100%; " class="navbox-trigger"> 
                      <i class="fa fa-lg fa-th"></i> 
                      </button> 
                      <div  id="count" class="icon" onclick="hidenotif()"><i class="fa fa-file-image-o"></i></div> 
                      <div  id="messagecount" class="icon"  onclick="sendchat()"><i class="fa fa-file-image-o"></i></div> 
                 </div> 
                <div class="navbox"> 

     <div class="navbox-tiles"> 

         <a href="HOME.jsp" class="tile"> 

         <div class="icon"><i class="fa fa-home">Home</i></div> 

         

       </a> 

       

       <a href="FILEUPLOADPAGE.jsp" class="tile"> 

           <div class="icon"><i class="fa fa-envelope-o">File Upload</i></div> 
           

       </a> 

       <a href="FILEDOWNLOAD.jsp" class="tile"> 

         <div class="icon"><i class="fa fa-file-image-o">File Download</i></div> 

        

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
        

         <div id="divmain" class="divmain">
                
   

             <div id="leftborder" class="leftborder" >
                 <div id ="notifbox" hidden="hidden" >
                <div id ="nbar" style="font-family: Algerian; font-size:4;" align="center">Notification </div>
                <div id ="notification"></div>
            </div>
                   
                 <div id="left" class="left">

                     <div id="currentuser" class="activeuserdivtitlename" onclick="hidecurrentuser()"><table boder="0" width="100%"><tr><td style=" font-size: 30px; color:#26e0ed;";>Me:</td></tr></table></div> 
                        <div id="currentuserimage" class="currentuserimage" ></div>

                         <div id="activeuserdivtitlename" class="activeuserdivtitlename" onclick="hideactiveuser()"  style=" font-size: 30px; color:#26e0ed;";>Active Users<input type="button" style='background-image:  url("pics/refresh.jpg"); background-size: 100%; opacity: .4; width:20px; height: 20px; ' onclick="Activity()"></div>                        
                        <div id="diverrors" class="diverrors" hidden="hidden" ></div>
                        <div id="friendlistdivtitlename1" class="friendlistdivtitlename"  onclick="hidefriendlist()" style=" font-size: 30px; color:#26e0ed;";>Friends<input type="button" style='background-image:  url("pics/refresh.jpg"); background-size: 100%; opacity: .4; width:20px; height: 20px; ' onclick="friendlist()"></div>        
                        <div id="friendlistdivtitlename" class="activeuserdivtitlename" hidden="hidden"></div>
                  
                 </div>
                 <div id="center" class="center" hidden="hidden" >
                     
                        <div id="curentuser" class="activeuserdivtitlename" onclick="hideactiveuser()">  <table border="0px" width="100%;"><tr><td  style=" font-size: 30px; color:#26e0ed;";>User:</td><td align="right"><input type="button" style=" background-color: transparent; opacity: .8; width:33px; height: 33px; background-image: url('pics/settings.png'); background-size: 100%;" onclick="usersetting()"></td></tr></table></div> 
                            <div id="divchatto" class="currentuserimage" style=" border-bottom: solid #26e0ed; "></div>
                            
                        <!--    <div id="centerdiv1" class="centerdiv"></div> -->
                        <div id="centerdiv2" class="centerdiv">
                            <div id="messagesend" class="messagesend"  ><input type ="textarea"  id ="message" class='user1'cols="10" rows="3" /><input type ="button" id ="button1" class="button1" value ="SEND" onclick="sendMessage()"/></div>
                            <div id="divmessages" class="divmessages"></div>
                            <div id="usersetting" hidden ="hidden" style="width:100%; height: 50px; background-color: transparent; position: relative; float: left;">
                                  <table border="0px" width="100%" height="100%">
                                      <tr><td align="right"  height="100%"><input type="button" value="Unfriend" onclick="unfriend()" class="button"></td><td align="left"><input type="button" class="button"value="Block" onclick="block()"></td></tr>
                                    
                                </table>
                            </div>
                        </div>
                            
                            <div></div>    
                    </div>
             </div>
             
         </div>    
                
                
                
             
                
         
             
         </div>
         </div>
        <input type="text" id="chat_with" />
      </body>
</html>
