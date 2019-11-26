
<%@page import="dbpackage.FilePage"%>
<%@page import="dbpackage.ImagesSetting"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbpackage.ConnectionClass"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con= ConnectionClass.Connect(session);
   String user=request.getParameter("user");
   // String user="Bharati";
    
    
   //  String sql="select * from chat_users where user_name =? or name=?";
   String sql="select * from chat_users where LOWER(user_name) = LOWER(?) or LOWER(name)=LOWER(?)";
    PreparedStatement ps=con.prepareStatement(sql);
    ps.setString(1, user);
    ps.setString(2, user);
    ResultSet rs= ps.executeQuery();
    int sno=1;
     out.print("<center>");
     out.print("<div style='width:80%; height:150px; margin-left:auto; margin-right:auto;background-color: #ffffff; position: relative;'>");    
             out.print("<table border='2' width='100%' height='150px' align='center'>");
        
    while(rs.next())
    {
        String name= ""+rs.getObject("user_name");
         String img= ImagesSetting.userimage(name);
         int b=FilePage.stopblockedusertobesearched(name,session);
         if(b!=1)
         {
        String newid="link" + sno;
              out.print("<tr><td align='center'>"+ img +"</td><td>"+ name +"</td> <td><a id='" + newid + "'href='#' onclick=\"sendfriendrequest('" + user + "','" + newid + "')\">Friend Request</a></td></tr>");
              sno++;
         }
             
    }
      out.print("</table>");
         out.print("</div>");
          out.print("</center>");
         ConnectionClass.close(ps);
ConnectionClass.close(rs);
    
    %>