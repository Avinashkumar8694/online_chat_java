<%@page import="dbpackage.LoginMgrClass"%>
<%@page import="dbpackage.ImagesSetting"%>
<%
   // String img=ImagesSetting.getCurrentUserImage(session);
    String u = LoginMgrClass.getCurrentUser(session); 
       String img= ImagesSetting.chattoimage(u);  
LoginMgrClass.setActiveTime(session, u);
  //  out.print(img + LoginMgrClass.getCurrentUser(session));
    
    out.println("<font size='5' color='green'>");
    out.println("<div class='w3-container w3-center'>"+ u +"</div> ");
            out.println("<div >" + img +"</div>" );
            
            out.println("</font>"); 
    %>