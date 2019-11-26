<%@page import="dbpackage.ImagesSetting"%>
<%@page import="dbpackage.LoginMgrClass"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbpackage.ConnectionClass"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = ConnectionClass.Connect(session);
    String currentuser= LoginMgrClass.getCurrentUser(session);
    String status=currentuser+ "Blocked";
    String sql= "select * from request where status=?";
    PreparedStatement ps= con.prepareStatement(sql);
    ps.setString(1, status);
    ResultSet rs=ps.executeQuery();
    String blockeduser;
     out.println( "<center>");
            out.println("<table border='0px' width='50%' >");

    while(rs.next())
    {
        String u1 = ""+ rs.getObject("senderuser");
         String u2 =""+rs.getObject("receiveruser");
         if(u1.equals(currentuser))
         {
             blockeduser=u2;
         }
         else
         {
              blockeduser=u1;
         }
         String img = ImagesSetting.userimage(blockeduser);
        out.println("<tr><td>"+ img +"</td><td>"+ blockeduser +"</td><td><input type='button' value='Unblock' onclick=\"unblock('"+ blockeduser +"')\"/></td></tr>");
    }
            out.println( "</table>");
 out.println( "</center>");
 ConnectionClass.close(ps);
 ConnectionClass.close(rs);
    %>