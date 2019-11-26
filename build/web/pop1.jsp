<%-- 
    Document   : pop2
    Created on : 22 Apr, 2016, 11:07:02 PM
    Author     : HP User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
       .mainbody
       {
           position: absolute;
           float: left;
           height:650px;
           width: 99%;
             background-image: url("assets/img/grey_wash_wall.png");
           opacity: .8;
       }
       
       .pop
       {
           position: relative;
           float:left ;
           background-color: white;
           height: 200px;
           width: 500px;
           top: 210px;
           left: 440px;
      
         }
         .button
         {
             padding: 15px 25px;
  font-size: 20px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color:midnightblue;
  background-color:#fff;
  border:  solid gray;
  border-radius: 15px;
  box-shadow: 0 9px #999;
  height: 47px;
  font-family: Algerian;
  font-size: 25px;
         }
         .button:hover {background-color:#357ebd}

    </style>
    <body>

        <div class="mainbody" id="mainbody">
         
            <div class="pop" id="pop">
                <font color="black" align="center" onkeypress="returneddetail()">
                <h1 style="font-family: Algerian;font-family: 100px;";><center>Username or Password is incorrect</center></h1></font>
                <table width="100%">
                    <tr><td align="center"><form action="login.jsp" method="post"><input class="button" type="Submit"  value ="OK"></form></td></tr>
                </table>
            </div>
        </div>
        
        
       
    </body>
</html>
