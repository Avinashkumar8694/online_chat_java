<%@page import="java.sql.ResultSet"%>
<%@page import="dbpackage.LoginMgrClass"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbpackage.ConnectionClass"%>
<%@page import="java.sql.Connection"%>
<%
      Connection conn = ConnectionClass.Connect(session);
      String sql = "Select count(*) as noti from request where RECEIVERUSER =? and Status='pending'";
      PreparedStatement ps = conn.prepareStatement(sql);
      String curruser = LoginMgrClass.getCurrentUser(session);
      ps.setString(1,curruser);
      ResultSet rs = ps.executeQuery();
      rs.next();
      int notif =Integer.parseInt(""+rs.getObject("noti"));
      out.print("<font color='red' face='Sans-serif' size='5'>" + notif + "</font>" );
      ConnectionClass.close(ps);
      ConnectionClass.close(rs);
       
    
    
    
    %>