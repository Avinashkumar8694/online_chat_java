
<%@page import="dbpackage.FilePage"%>
<%@page import="dbpackage.LoginMgrClass"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbpackage.ConnectionClass"%>
<%@page import="java.sql.Connection"%>
<%
  // String user=LoginMgrClass.getCurrentUser(session);
    String  user =""+ session.getAttribute("User");
    
   out.print(user);
   boolean fileshare = FilePage.deluserfromFilesshare(user, session);
   boolean request1 = FilePage.DeleteFromREQUEST(user,session);
   boolean fileupload = FilePage.deluserfromFileUpload(user, session);
   boolean readRprt = FilePage.deluserfromReadReport(user, session) ;
   boolean chat_with = FilePage.deluserfromcha_with(user, session);
   
    boolean login = FilePage.deluserfromlogin(user, session);
    
   boolean chatusers= FilePage.deluserfromchatusers(user, session);
  session.setAttribute("User", null);
 // response.sendRedirect("login.jsp");
  


%>