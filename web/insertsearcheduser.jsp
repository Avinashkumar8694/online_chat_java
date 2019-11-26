<%@page import="dbpackage.LoginMgrClass"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbpackage.ConnectionClass"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = ConnectionClass.Connect(session);
    String user = request.getParameter("user");
    
    String sql1="select count(*) as count from Request where senderuser=? And Receiveruser=?";
    PreparedStatement ps1= con.prepareStatement(sql1);
    ps1.setString(1,""+LoginMgrClass.getCurrentUser(session) );
    ps1.setString(2,""+ user );
    ResultSet rs= ps1.executeQuery();
    rs.next();
    
    int n= Integer.parseInt(""+rs.getObject("count"));
        
     if(n!=0)
         return;
    
  //  String user = request.getParameter("user");
    String sql="insert into Request values(reqno.nextval,?,?,?,?,sysdate)";
    PreparedStatement ps= con.prepareStatement(sql);
    ps.setString(1,""+LoginMgrClass.getCurrentUser(session) );
    ps.setString(2,""+ user );
    ps.setString(3, "Accept Request");
    ps.setString(4, "pending");
    ps.executeUpdate();
    
    
    
    
    
    
    ConnectionClass.close(ps);
    ConnectionClass.close(rs);
    
    
    
    %>