<%@page import="dbpackage.LoginMgrClass"%>
<%@page import="dbpackage.LoginMgrClass"%>
<%@page import="dbpackage.LoginMgrClass"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbpackage.ConnectionClass"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%
    
    try
    {
    String u = request.getParameter("user");
    String p = request.getParameter("pass");
    
   boolean r = LoginMgrClass.doLogin(session,u, p ,response);
    response.sendRedirect("");
    
    
     
   }
   
  
     catch(Exception ex)
     {
         out.print(ex);
         
     }
   
   
    
    
    %>
    
    