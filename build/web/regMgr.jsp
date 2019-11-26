<%@page import="javax.validation.constraints.Null"%>
<%@page import="dbpackage.ConnectionClass"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
   
    try
        
    {
        Connection my = ConnectionClass.Connect(session);
        
        String u = request.getParameter("username");
       String pa= request.getParameter("password");
        
      //  String u="ravi";
     //   String pa="123";
      //  String na="ravi";
     String na = request.getParameter("name");
     String sql = "Insert into Chat_users values (?,?,?,sysdate)";
     PreparedStatement ps  = my.prepareStatement(sql);
     ps.setString(1, u);
     ps.setString(2, pa);
     ps.setString(3, na);
     ps.executeUpdate();
            
    out.println("Success");
    ConnectionClass.close(ps);
       
    }
    catch(Exception ex)
    {
          out.print(ex);
    }
    
    %>
