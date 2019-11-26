<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="dbpackage.ConnectionClass"%>
<% 
   Connection con = ConnectionClass.Connect(session);
   String sql = "select * from fileupload where username = ?";
   String currentuser =""+ session.getAttribute("User");
   
   PreparedStatement ps = con.prepareStatement(sql);
   //String currentuser ="Parul";
   ps.setString(1, currentuser);
   ResultSet rs = ps.executeQuery();
   out.println("<table width='98%' border='2' border-radius='50px'>");
   
   while(rs.next())
   {
       String filename = ""+ rs.getObject("FILENAME");
       String fileno = "" + rs.getObject("FILENO");
       out.println("<tr><td width='10%'><font face='Comic Sans MS' size='2' >" + fileno + "</font></td><td width='60%'><font face='Comic Sans MS' size='2' >" +filename + "</font></td><td><a href='#' onclick=\"sharethis(" + fileno + ")\"><font face='Comic Sans MS' size='2' >Share this</font></a></td><td><a href='#' onclick=\"Removethis(" + fileno + ")\"><font face='Comic Sans MS' size='2' >Remove this</font></a></td></tr>");
       
       
   }
   out.println("</table>");
   ConnectionClass.close(ps);
   ConnectionClass.close(rs);



%>