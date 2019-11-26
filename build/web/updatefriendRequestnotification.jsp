
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbpackage.ConnectionClass"%>
<%@page import="java.sql.Connection"%>
<% 
    
    Connection con = ConnectionClass.Connect(session);
    String sender=request.getParameter("sender");
    String sql="update request set status=? where senderuser=?";
    PreparedStatement ps= con.prepareStatement(sql);
    ps.setString(1, "Accepted");
    ps.setString(2, sender);
    ps.executeUpdate();
    ConnectionClass.close(ps);
  %>  