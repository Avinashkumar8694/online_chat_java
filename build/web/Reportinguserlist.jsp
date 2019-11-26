
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbpackage.LoginMgrClass"%>
<%@page import="java.sql.Connection"%>
<%@page import="dbpackage.ConnectionClass"%>
<%
Connection con=ConnectionClass.Connect(session);
try
  {     
      
       String username= LoginMgrClass.getCurrentUser(session);
    //  String username="Parul";
      PreparedStatement ps = con.prepareStatement("select * from request where (receiveruser=? and status=?) or (senderuser=? and status=?)");
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
          
            
            String img=LoginMgrClass.reportinguserimage(User);
            out.println("<div  style='width:90%; border-bottom:green;  position:relative; float:right; top:5px; right:10%;'>");
            out.println("<font size='3' color='green'>");
        //    out.println("" + img + User +"<a href='#' onclick=\"username()\" >chat history</a>");
            out.println("" + img +".            .              ." +User + ".            .              ." +"<input type='button' value='Chat History' onclick=\"username('" + User + "')\"");
            out.println("</font>"); 
            out.println("</div>");
            
            
       
        }
        ConnectionClass.close(ps);
ConnectionClass.close(rs);
  }

catch(Exception ex)
{
    System.out.println(ex);
}

%>