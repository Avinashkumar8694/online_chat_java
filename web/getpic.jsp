
<%@page import="dbpackage.ImagesSetting"%>
<%@page import="dbpackage.LoginMgrClass"%>
<%
        
     String img=ImagesSetting.GetImage(session);
             out.print(img);
            
        %>
        