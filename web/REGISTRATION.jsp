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
        function doRegistration()
            {
                var u = $("#user").val();
                
               
                var p = $("#pass").val();
                
                var cp = $("#cpass").val();
                var n = $("#name").val();
                 if ( u == "" || p == "" ||cp == "" || n=="")
                    {
                        alert("One or more Fields are Empty");
                        return;
                    }
                  
                
                if(p != cp)
                    {
                        alert("Password did not matched");
                        return;
                    }
                    var url = "regMgr.jsp?username=" + u + "&password=" + p + "&confirmpass=" + cp + "&name=" + n;
                    
                    var xhr = new XMLHttpRequest();
                    xhr.open("GET",url,true);
                   
                    xhr.onreadystatechange = function (){doRegistrationResponse(xhr);};
                    
                    xhr.send();
                    
                   
            }
            function doRegistrationResponse(xhr)
            {
              if(xhr.readyState != 4)
              return;
          $("#diverrors").html(xhr.responseText);
         var a=  $("#diverrors").text();
         
        disp();            
          
            }
            function disp()
            {
                var a=  $("#diverrors").text();
                url="chekcons.jsp?cons=" + a;
                var xhr=new XMLHttpRequest();
                xhr.open("GET",url,true);
                xhr.onreadystatechange = function (){checkconsresponse(xhr);};
                xhr.send();
                
                }
              function   checkconsresponse(xhr)
              {
                  if(xhr.readyState != 4)
              return;
                    $("#diverrors1").html(xhr.responseText);
                   var a= $("#diverrors1").text();
                  var u = $("#user").val("");
                
               
                var p = $("#pass").val("");
                
                var cp = $("#cpass").val("");
                var n = $("#name").val("");
                alert(a) ;  
      
              }
            
        </script>
              <style>
            #divmain
            {
                background-color: transparent;
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

   font-size: 35px; 

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
               background-color: transparent;
                   
            }
              .user
            {
                position: relative;
                width: 300px;
                height: 30px;
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
             
           #divregister
           {
               position: relative;
               top: 70px;
             
           }
        </style>
    </head>
    <body onload="hidediv()">
        <div id="divmain" class="divmain">
            
           
            <div id="navigation-bar" class="navigation-bar">
                
                
            <div class="bar"> 
               
                <button id="navbox-trigger" style="background-image: url('pics/options.png'); background-color: white; opacity:.4;background-size: 100%; " class="navbox-trigger"> 

       <i class="fa fa-lg fa-th"></i> 

     </button> 

   </div> 

<div class="navbox"> 

     <div class="navbox-tiles"> 

         <a href="HOME.jsp" class="tile"> 

         <div class="icon"><i class="fa fa-home">Home</i></div> 

         

       </a> 

       

     </div> 

   </div>        
</div>          
            <div id="diverrors1" hidden="hidden"></div>     
        <div id="profileCover" class="profilecover">
              <div id="divregister" class="divregister">
               <center>
                         <div style="background-image: url('pics/chat background.jpg'); background-size: 100%; width: 100%; position: relative; top: 50px;" >
                            <table  width ="40%" border ="0px" Height ="400px">
                                <tr><td colspan ="2" align ="center" style="font-family: Algerian; font-size: 20px;";>USER REGISTRATION</td></tr>
                                <tr><td colspan ="2" align ="center"><h4> <div id="diverrors" hidden="hidden" ></div></h4></td></tr>
                                  <tr><td align ="left" style="font-family: Algerian; font-size: 20px;";>USERNAME </td><td align ="left"><input type ="text" id ="user" class="user"></td></tr>
            
                                  <tr><td align ="left" style="font-family: Algerian; font-size: 20px;"; >PASSWORD </td><td align ="left"><input type ="password" id ="pass" class="user"></td></tr>
            
            
                                  <tr><td align ="left" style="font-family: Algerian; font-size: 20px;";> CONFIRM PASSWORD </td><td align ="left"><input type ="password" id ="cpass" class="user"></td></tr>
            
            
                                  <tr><td align ="left" style="font-family: Algerian; font-size: 20px;";>NAME</td><td align ="left"><input type ="text" id ="name" class="user"></td></tr>
            
           
                                  <tr><td colspan ="2" align ="center">   <input type ="button" id="button1" value ="Save" class="button" onclick="doRegistration()"></td> </tr>
                             <form action="LOGIN.jsp" method="Post">
                                 <tr><td colspan='2' align='center' style="font-family: Algerian; font-size: 20px;";><h3>Login Now</h3></td></tr>
                                 <tr><td colspan="2" align='center'><h3><input type ="submit" id="button1" value ="Login" class="button"></h3></td></tr>
                             </form>
           
                             </table>
                                </div>
                        </center>
                    </div>
             <div id="noti" hidden='hidden' onclick="f1()"></div>
             
             
            </div>
               
            </div>
           
            
        
    </body>
</html>
