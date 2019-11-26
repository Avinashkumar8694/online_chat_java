<%
    if(session.getAttribute("User")!=null)
        response.sendRedirect("dashboard.jsp");
   
     
    %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>LIVE CHAT , LIFE CHAT</title>
    <!-- BOOTSTRAP CORE STYLE  -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT-AWESOME CORE STYLE  -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CORE CUSTOM STYLE  -->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- THEME COLOUR STYLE (BY DEFAULT GREEN COLOR,  YOU CAN REPLACE green.css to red.css , orange.css, blue.css ,grey-bk.css or black-bk.css)  -->
    <link id="mainCSS" href="assets/css/themes/blue.css" rel="stylesheet" />
    <!-- GOOGLE FONTS -->
    <link href='http://fonts.googleapis.com/css?family=Yellowtail' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Signika&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
     <!-- STYLE SWITCHER STYLE -->
    <link href="assets/css/style-switcher.css" rel="stylesheet" />
</head>
     <style>
       .mainf
       {
           position: relative;
           float: left;
           height: 600px;
           width: 500px;
       }
        .reg
        {
              position: relative;
            width: 100%;
            height: 250px;
            float: left;
            background-color: #fff;
           
         
        }
        .login
        {
         
              position: relative;
            width: 100%;
            height: 600px;
            float: left;
            background-color:#fff;
           
         
        }
        .prac
        {
            position: relative;
            float: left;
            width: 100%;
            height: 160px;
            background-color: transparent; 
        }
        .prac1
        {
            top: 10px;
            position: relative;
            float: left;
            width: 100%;
            height: 90px;
            background-color: #21925C;
        }
         .prac2
        {
            position: relative;
            float: left;
            width: 100%;
            height: 90px;
            background-color:#21925C;
        }
        
                   .buttonclass {
          
  padding: 15px 25px;
  font-size: 20px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #000;
  background-color: #3e8e41;
  border: #336699;
  border-radius: 15px;
  box-shadow: 0 9px #999;
  height: 40px;
}
.buttonclass:hover {background-color:#398439}

.buttonclass:active {
  background-color: #21925C;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
        .img
        {
            top: 20px;
          float: left;
            width:  300px;;
            position: relative;
            height: 550px;
        }
    </style>

    
    <body>
    <div class="switcher" style="left:-150px;">
        <a id="switch-panel" class="hide-panel" style="text-decoration:none;">
            <i class="fa fa-angle-double-down "  ></i>
        </a>
        <h2>CHANGE THEME</h2>
      <span class="span-text">Choose background color</span>  
        <ul class="colors-list">           
            <li><a title="Blue" id="blue" class="blue" ></a></li>
            <li><a title="Green" id="green" class="green" ></a></li>
             <li><a title="Yellow" id="yellow" class="yellow" ></a></li>
            <li><a title="Red" id="red" class="red" ></a></li>
        </ul>
         <span class="span-text">Image Backgrounds</span>
         <ul class="colors-list-bk">
            <li><a title="Black Background" id="black-bk"  >BLACK</a></li>
            <li><a title="Grey Background" id="grey-bk"  >GREY</a></li>
        </ul>
    </div>
        <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
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
                    <li><a href="HOME.jsp">HOME</a></li>
                    <li><a href="userguideline.jsp">USER GUIDELINE</a></li>
                    <li><a href="RandL.jsp">REGISTRATION FORM OR LOGIN FORM</a></li>
                     <li><a href="About.jsp">ABOUT</a></li>
                                          
                    <li><a href="contact.jsp">CONTACT</a></li>
                </ul>
            </div>
        </div>
        </div>
         <div id="REG-sec">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <h1 data-scroll-reveal="enter from the bottom after 0.1s"><strong>Registration Form or Login Form: </strong></h1>
                    <br />
                </div>
            </div>
        </div>
            <div id="reg" class="reg">
                <div id="prac" class="prac">
                    <table align="center">
                        
                        <tr><td><center><h1>Please Register Here , Click ON</h1></center></td></tr>
                    </table>
                    
                    
                </div>
               
                <center>
                
                    
                        <table class="buttonclass" class="reg">
                            <tr>
                                <td>
                                    <form action ="user_registration.jsp" method="post">
                                    <center><input type="Submit" value="REGISTRATION"/></center>
                                </form>
                                </td>
                                
                            </tr>
                            <tr>
                                
                                
                                
                            </tr>
                             </table>
                </center>
                   
            </div>
               <div id="prac1" class="prac1">
                    <table align="center">
                        
                        <tr><td><center><h2>OR</h2></center></td></tr>
                    </table>
                    
                    
                </div>
                  <div id="prac2" class="prac2">
                    <table align="center">
                        
                        <tr><td><center><h2>If You are Already Registered Click on Login Button</h2></center></td></tr>
                    </table>
                    
                    
                </div>
                  <center>
                      
                  </center>
                  
                  <div id="login" class="login">
                      <center>
                    <table  class="buttonclass" height="400px" border="4">
                            <tr>
                                <td>
                                    <form action ="login.jsp" method="post">
                                    <center>
                                        <input type="Submit" value="LOGIN"/>
                                    </center>
                                        </form>
                                </td>
                            </tr>
                               
                        </table>
                            </center>
                    </div> 
                    
                  
               </div>
            
          <!-- /SCROLL TO UP SECTION END  -->
    <!-- JQUERY SCRIPTS FUCTIONS  -->
    <script src="assets/js/jquery-1.11.1.js"></script>
    <!-- BOOTSTRAP SCRIPTS FUCTIONS  -->
    <script src="assets/js/bootstrap.js"></script>
    <!-- SROLLING SCRIPTS   -->
    <script src="assets/js/jquery.easing.min.js"></script>
    <!-- STYLE SWITCHER SCRIPTS   -->
    <script src="assets/js/style-switcher.js"></script>
     <!-- ON SCROLL SCRIPTS   -->
    <script src="assets/js/scrollReveal.js"></script>
    <!-- CUSTOM SCRIPTS   -->
    <script src="assets/js/custom.js"></script>
    </body>
</html>