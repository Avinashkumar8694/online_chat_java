<%@page import="java.sql.ResultSet"%>
<%@page import="dbpackage.LoginMgrClass"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbpackage.ConnectionClass"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = ConnectionClass.Connect(session);
    String sql="select senderuser as co from Request where receiveruser=? and status='pending'";
    PreparedStatement ps= con.prepareStatement(sql);
    ps.setString(1, ""+LoginMgrClass.getCurrentUser(session));
    ResultSet rs= ps.executeQuery();
    while(rs.next())
    {
        out.println("<div width='100%' align='center' > ");
        String sender=""+rs.getObject("co");
        String img=LoginMgrClass.userimage(sender);
        out.println("<table width='100%' align='center' border='0px' > ");
    out.println("<tr><td align='left'>"+ img + "</td><td align='center'>" + sender +"</td><td><input type='button' value='Confirm' onclick=\"acceptedRequest('" + sender + "')\" /></td></tr>");
    out.println("</table>");
    out.println("</div > ");
    }
    ConnectionClass.close(ps);
    ConnectionClass.close(rs);
    %>