<%@page import="dbpackage.FilePage"%>
<%@page import="dbpackage.ConnectionClass"%>
<%@page import="java.sql.Connection"%>
<%

    Connection con = ConnectionClass.Connect(session);
    String user = request.getParameter("user");
    boolean b= FilePage.unfrienduser(user, session);

%>
