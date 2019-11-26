
<%@page import="java.sql.ResultSet"%>
<%@page import="dbpackage.LoginMgrClass"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="dbpackage.ConnectionClass"%>
<%@page import ="javax.servlet.http.HttpSession"%>
<%
Connection con=ConnectionClass.Connect(session);
try
  {    
        
       String username= LoginMgrClass.getCurrentUser(session);
        PreparedStatement ps = con.prepareStatement("select * from request where (receiveruser=? and status=?) or (senderuser=? and status=?)");
        ps.setString(1, username);
        ps.setString(2, "Accepted");
         ps.setString(3, username);
        ps.setString(4, "Accepted");
       
        ResultSet rs = ps.executeQuery();
        out.println("<div style='width:94%; height:50px; border-bottom:green;  position:relative; float:right; top:5px; right:3%;'>");
            out.println("<font size='5' color='green'>");
             out.println("<table border='0px' width='100%'>");
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
        
          String img= LoginMgrClass.userimage(User);
            
       
           out.println("<tr style='height:60px;'><td align='center'>"+ img+"</td><td style='font-size:20px;'>"+ User +"</td><td><a href='#' title='Chat' onclick=\"selectChatUser('" + User + "')\"> Chat</a></td></tr>");
        }
         out.println("</table>");
          out.println("</font>"); 
            out.println("</div>");
        ConnectionClass.close(ps);
ConnectionClass.close(rs);
  }

catch(Exception ex)
{
    System.out.println(ex);
}

%>