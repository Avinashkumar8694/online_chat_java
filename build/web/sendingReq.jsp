<%@page import="java.sql.ResultSet"%>
<%@page import="dbpackage.LoginMgrClass"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbpackage.ConnectionClass"%>
<%@page import="java.sql.Connection"%>
<%
   Connection conn = ConnectionClass.Connect(session);
   String sql1 ="select * from request where senderuser =? and receiveruser =? and Status ='Accepted'";
   PreparedStatement ps1= conn.prepareStatement(sql1);
   String currentuser = LoginMgrClass.getCurrentUser(session);
   String recv = request.getParameter("recv");
   ps1.setString(1,currentuser);
   ps1.setString(2,recv);
   out.print(currentuser);
   out.print(recv);
   ResultSet rs= ps1.executeQuery();
   boolean result = rs.next();
   if(result == false)
   {
      String sql = "insert into request values(reqnum.nextval,?,?,NULL,'Pending',sysdate)"; 
       PreparedStatement ps= conn.prepareStatement(sql);
       String currentuser1 = LoginMgrClass.getCurrentUser(session);
   String recv1 = request.getParameter("recv");
   ps.setString(1,currentuser1);
   ps.setString(2,recv1);
   ps.executeUpdate();
   }
   else
   {
       out.print(recv + "is already your friend");
   }
  // 
   //
   
   
   
   
   ConnectionClass.close(ps);
   
   
   
    
    
 %>
    