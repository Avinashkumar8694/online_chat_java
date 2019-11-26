<%@page import="dbpackage.LoginMgrClass"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbpackage.ConnectionClass"%>
<%@page import="java.sql.Connection"%>
<%
    
    
    Connection con =ConnectionClass.Connect(session);
    String sql="update login set status=? , logout_time=sysdate where user_name=?";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, "out");
    ps.setString(2, LoginMgrClass.getCurrentUser(session));
    ps.executeUpdate();
    
    String username=null;
    session.setAttribute("User", username);
    response.sendRedirect("login.jsp");
    
    ConnectionClass.close(ps);
    
    %>
