
            
            
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
         /*  function sendMessage()
            {
                alert("");
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
            */
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
        location.reload(true);
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
            //  alert();
            xhr.onreadystatechange=function (){unfriendresponse(xhr);};
                xhr.send();
                
                  }   
                

            }
            function unfriendresponse(xhr)
            {
                if(xhr.readyState!=4)
                    return ;
                document.getElementById("usersetting").style.hidden="hidden";
            }
            function un()
            {
               // alert();
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
    
    
   
            