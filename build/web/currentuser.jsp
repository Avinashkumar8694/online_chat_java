<%@page import="dbpackage.LoginMgrClass"%>
<%
    String u = LoginMgrClass.getCurrentUser(session);
    out.print("<h1>"+ u + " </h1>");
    %>