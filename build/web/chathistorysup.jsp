  <%@page import="java.sql.ResultSet"%>
<%@page import="dbpackage.LoginMgrClass"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbpackage.ConnectionClass"%>
<%
   
    String receiver=""+session.getAttribute("reportinguser");
    

PreparedStatement ps= ConnectionClass.Connect(session).prepareStatement("select MESSAGE,round((sysdate-messagedate)*24*60,2) || ' min ' as messagedate,MSGFROM,MSGTO from chat_with where (msgfrom=? and msgto=?) or  (msgfrom=? and msgto=?) order by messageno desc");
String sender=LoginMgrClass.getCurrentUser(session);
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
    String msgdate="" + rs.getObject("messagedate");
    out.println("<tr><td><font color='red'>"  + msgsender + "</font></td><td><font color='green'>" + message + "</font></td><td><font color='red'>" + msgdate + "</font></td></tr>");
    
}
out.println("</table>");
ConnectionClass.close(ps);
ConnectionClass.close(rs);

%>