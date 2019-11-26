<%-- 
    Document   : widow10
    Created on : Apr 21, 2016, 10:35:59 PM
    Author     : PARUL JAISWAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src ="js/jquery-1.11.1.min.js"></script>
         <script type="text/javascript" src ="css/win10.css"></script>
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

            
        </script>
        <style>
           
        </style>
    </head>
    <body>
        
        <div id="divmain">
       <div id="navigation-bar" class="navigation-bar"> 

   <div class="bar"> 

    <button id="navbox-trigger" class="navbox-trigger"> 

       <i class="fa fa-lg fa-th"></i> 

     </button> 

   </div> 

   <div class="navbox"> 

     <div class="navbox-tiles"> 

       <a href="#" class="tile"> 

         <div class="icon"><i class="fa fa-home"></i></div> 

         <span class="title">Home</span> 

       </a> 

       <a href="#" class="tile"> 

         <div class="icon"><i class="fa fa-calendar"></i></div> 

         <span class="title">Chat</span> 

       </a> 

       <a href="#" class="tile"> 

           <div class="icon"><i class="fa fa-envelope-o"></i></div> 
           <span class="title"></span> 

       </a> 

       <a href="#" class="tile"> 

         <div class="icon"><i class="fa fa-file-image-o"></i></div> 

        <span class="title">File Download</span> 

       </a> 

       <a href="#" class="tile"> 

         <div class="icon"><i class="fa fa-cloud"></i></div> 

        <span class="title">Search User</span> 

       </a> 

       <a href="#" class="tile"> 

         <div class="icon"><i class="fa fa-file-movie-o"></i></div> 

         <span class="title">Change Profile Picture</span> 

       </a> 

     </div> 

   </div> 

 </div> 


     </div>   

    </body>
</html>
