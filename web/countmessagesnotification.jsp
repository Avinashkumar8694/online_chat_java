<%@page import="dbpackage.LoginMgrClass"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbpackage.ConnectionClass"%>
<%@page import="java.sql.Connection"%>
<%

    Connection con = ConnectionClass.Connect(session);
    String sql = "Select count(*) as readno from readreport where receiveruser=? and status=?";
    PreparedStatement ps= con.prepareStatement(sql);
    ps.setString(1, LoginMgrClass.getCurrentUser(session));
    ps.setString(2,"unread");
    ResultSet rs = ps.executeQuery();
    rs.next();
    String count = ""+rs.getObject("readno");
    //out.print(count);
    out.print("<font color='red' face='Sans-serif' size='5'>" + count + "</font>" );
ConnectionClass.close(ps);
ConnectionClass.close(rs);
%>