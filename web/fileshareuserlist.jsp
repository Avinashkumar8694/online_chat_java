   

<%@page import="dbpackage.ConnectionClass"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbpackage.LoginMgrClass"%>
<%@page import="java.sql.Connection"%>
<% 
   //  if(!LoginManager.isUserLoggedIn(session))
     // {
       //   out.println("Not Logged in"); 
         // response.sendRedirect("LoginForm.jsp");
          //return;
    //  }
   Connection con = ConnectionClass.Connect(session);
   String username= LoginMgrClass.getCurrentUser(session);
 
  String sql="select * from request where (receiveruser=? and status=?) or (senderuser=? and status=?)";
  
   PreparedStatement ps = con.prepareStatement(sql);
     ps.setString(1, username);
        ps.setString(2, "Accepted");
         ps.setString(3, username);
        ps.setString(4, "Accepted");
         ResultSet rs = ps.executeQuery();
       while(rs.next())
        {
            String sender = ""+rs.getObject("senderuser");
            String receiver = ""+rs.getObject("receiveruser");
            String User;
            if(sender.equals(username))
                User = receiver;
            else
            {
                User= sender;
            }
   
  
    out.println("<table width='100%' border='2'>");
    
   
       
 out.println("<tr><td width='50%'><a href='#' onclick=\"sharetoo('" + User + "')\"><font face='Comic Sans MS' size='2'>Share with</font></a></td><td><font face='Comic Sans MS' size='2'>" + User + "</font></td></tr>");
       
   }
   out.println("</table>");
   ConnectionClass.close(ps);
   ConnectionClass.close(rs);



%>