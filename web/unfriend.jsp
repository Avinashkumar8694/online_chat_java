<%@page import="dbpackage.FilePage"%>
<%
    String user=request.getParameter("user");
boolean b= FilePage.unfrienduser(user, session);

%>