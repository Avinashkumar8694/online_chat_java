
<%@page import="dbpackage.FilePage"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbpackage.ConnectionClass"%>
<%@page import="java.sql.Connection"%>
<%@page import="dbpackage.LoginMgrClass"%>
<%
    
    Connection con = ConnectionClass.Connect(session);
    String currentuser= LoginMgrClass.getCurrentUser(session);
    
    String fileno = request.getParameter("filename1");
    String shareto = request.getParameter("Shareto1");
    
    
    String sql = "select filename as files from fileupload where fileno = ?";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1,fileno);
   ResultSet rs =  ps.executeQuery();
   rs.next();
    String saveFile =""+ rs.getObject("files");
    
    
    String sql1 = "insert into FileShare values (shareseq.nextval,?,sysdate,?,?)";
   
   ps = con.prepareStatement(sql1);
   ps.setString(1,""+ fileno);
   ps.setString(3,shareto );
   ps.setString(2,currentuser );
   ps.executeUpdate();
   
   String extension=FilePage.getFileExtension(saveFile);
   
   String message="<a href='up/" + currentuser + "/" + fileno + "." + extension + "' target='2'>" + saveFile + "</a>";
    ps=con.prepareStatement("insert into Chat_with values(msgno.nextval,? , sysdate ,? ,?)");
    ps.setString(1, message);
    ps.setString(2, currentuser);
    ps.setString(3, shareto);
    ps.executeUpdate();
  //  out.print("Your file has been shared!" + "<a href = 'FILEUPLOADPAGE.jsp'>Go Back</a>  " );
    
    ConnectionClass.close(ps);
    ConnectionClass.close(rs);
    
    response.sendRedirect("FILEUPLOADPAGE.jsp");
    %>