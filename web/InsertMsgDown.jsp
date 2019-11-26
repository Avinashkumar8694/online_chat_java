
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbpackage.ConnectionClass"%>
<%@page import="dbpackage.LoginMgrClass"%>
<%@page import="java.sql.Connection"%>
<%
     
     
   Connection con = ConnectionClass.Connect(session);
   String msg = request.getParameter("message");
   String sender=LoginMgrClass.getCurrentUser(session);
   String receiver=request.getParameter("receiver");
   
   PreparedStatement ps=con.prepareStatement("insert into Chat_with values(MESSAGSEQ.nextval,?, sysdate ,?,?)");
   ps.setString(1, msg);
   ps.setString(2, sender);
   ps.setString(3, receiver);
   ps.executeUpdate();
   
   
    PreparedStatement ps1=con.prepareStatement("insert into readreport values(readnosec.nextval,? ,? ,?)");
  
   ps1.setString(1, sender);
   ps1.setString(2, receiver);
    ps1.setString(3, "unread");
   ps1.executeUpdate();
   
   
   ConnectionClass.close(ps);
   ConnectionClass.close(ps1);
%>