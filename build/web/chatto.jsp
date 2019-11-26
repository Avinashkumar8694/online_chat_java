
<%@page import="dbpackage.LoginMgrClass"%>
<%@page import="dbpackage.ImagesSetting"%>

<%
    
    String chatid = request.getParameter("chatto");
    session.setAttribute("chatid", chatid);
//    String img="<img style='width:100px; height:100px; border-radius:20px;' src='profile/" + chatid + ".JPG'/>";
   String img= ImagesSetting.chattoimage(chatid);  
  // String img="\t\t\t\t<img height='13px' width='13px' src='pics/green.PNG' alt='Inactive for long period' title='Recently active' />";
 // String img=loginpackage.LoginManager.userimage(chatid);
   out.println("<div  style='width:94%; height:100px; border-bottom:green; vertical-align:  middle;  position:relative; float:right; top:5px; right:3%;'>");
            out.println("<font size='5' color='green'>");
            out.println("" + img + chatid + "\t\t\t\t\t\t<a href='#' onclick=\"gotochatbox('" + chatid + "')\">chat</a>");
            out.println("</font>"); 
            out.println("</div>");
    %>
    