<%@page import="java.sql.ResultSet"%>
<%@page import="dbpackage.LoginMgrClass"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbpackage.ConnectionClass"%>
<%@page import="java.sql.Connection"%>
<%

    Connection con = ConnectionClass.Connect(session);
    String user=LoginMgrClass.getCurrentUser(session);
    String sql="select distinct(senderuser) from readreport where receiveruser=? and status='unread'";
    PreparedStatement ps=con.prepareStatement(sql);
    ps.setString(1, user);
   // ps.setString(1, "avinash");
    ResultSet rs=ps.executeQuery();
     
    while(rs.next())
    {out.println("<div width='100%' align='center' > ");
    out.println("<table border='2' width='100%'>");
        String username = ""+ rs.getObject("senderuser");
        out.println("<tr><td>New Message:</td><td>"+ username + "</td></tr>");
        out.println("</table>");

         out.println("</div > ");
    }
ConnectionClass.close(ps);
ConnectionClass.close(rs);
%>