
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="dbpackage.ConnectionClass"%>
<%
      
    Connection con = ConnectionClass.Connect(session);
    
    String sql = "select * from fileshare f1 join fileupload f2 on f1.file_no=f2.fileno where SHAREDBY = ?";
    String currentuser =""+ session.getAttribute("User");
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, ""+currentuser);
ResultSet rs = ps.executeQuery();

  

out.println("<table width='100%' border='2'>");


while(rs.next())
{
 String sharedwith = ""+rs.getObject("SHAREDWITH");
 String sharedto = ""+rs.getObject("SHAREDBY");
 String Fileno = ""+ rs.getObject("FILE_NO");
 String Filename = ""+rs.getObject("FILENAME");
 
out.println("<tr><td><font face='Comic Sans MS' size='2'>" + Filename + "</font></td><td><font face='Comic Sans MS' size='2'Shared With</font></td><td><font face='Comic Sans MS' size='2'>" + sharedwith +"</font></td></tr>");
}

out.println("</table>");
ConnectionClass.close(ps);
ConnectionClass.close(rs);
%>