
<%@page import="dbpackage.FilePage"%>
<%
    
    String fileno = request.getParameter("fileno");
    FilePage.removefiles(session, fileno);
   // String filepath = FilesPage.filepath(session, fileno);
    boolean del = FilePage.deleteFile(session, fileno);
    if(del)
    {
        out.println("delete success");
    }
    
    //out.println(filepath);
    %>

