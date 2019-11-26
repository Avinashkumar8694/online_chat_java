
<%@page import="java.sql.ResultSet"%>
<%@page import="dbpackage.ConnectionClass"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbpackage.LoginMgrClass"%>
<%
String receiver=request.getParameter("receiver");
String sender=LoginMgrClass.getCurrentUser(session);


PreparedStatement ps=ConnectionClass.Connect(session).prepareStatement("select MESSAGE,round((sysdate-messagedate)*24*60,2) || ' min ' as message_date,MSGFROM,MSGTO from chat_with where (msgfrom=? and msgto=?) or  (msgfrom=? and msgto=?) order by messageno desc");
ps.setString(1, sender);
ps.setString(2, receiver);
ps.setString(3, receiver);
ps.setString(4, sender);
ResultSet rs=ps.executeQuery();

out.println("<table width='100%'>");
while(rs.next())
{
    
    String msgsender="" + rs.getObject("MSGFROM");
    String message="" + rs.getObject("message");
    String msgdate= ""+rs.getObject("message_date");
    
   
    
    out.println("<tr><td><font color='red'>"  + msgsender + "</font></td><td><font color='green'>" + message + "</font></td><td><font color='red'>" + msgdate + "</font></td></tr>");
    
}
out.println("</table>");
ConnectionClass.close(ps);
ConnectionClass.close(rs);

PreparedStatement ps1=ConnectionClass.Connect(session).prepareStatement("update readreport set status=? where senderuser=? and receiveruser=?");
ps1.setString(1, "read");
ps1.setString(2, receiver);
ps1.setString(3, sender);

ResultSet rs1=ps1.executeQuery();
ConnectionClass.close(ps1);
ConnectionClass.close(rs1);
%>