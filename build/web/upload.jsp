<%@page import="dbpackage.FilePage"%>
<%@page import="dbpackage.LoginMgrClass"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbpackage.ConnectionClass"%>
<%@page import="java.sql.Connection"%>
<!-- upload.jsp -->
<%@ page import="java.io.*" %>

<%
    
String contentType = request.getContentType();
//out.println("Content type is :: " +contentType);
if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();

byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while (totalBytesRead < formDataLength) {
byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
totalBytesRead += byteRead;
}
//out.print(dataBytes);
String file = new String(dataBytes);
String saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));


saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));               //getting file name



int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
//out.println(boundary);
int pos;
pos = file.indexOf("filename=\"");

pos = file.indexOf("\n", pos) + 1;

pos = file.indexOf("\n", pos) + 1;

pos = file.indexOf("\n", pos) + 1;


int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
//String filepath="f:\\up\\" + saveFile;


//fileOut.write(dataBytes);



Connection con = ConnectionClass.Connect(session);
String sql = "insert into fileupload values(filenum.nextval,?,?,sysdate,?)";
PreparedStatement ps = con.prepareStatement(sql);
String user = LoginMgrClass.getCurrentUser(session);

int vno = FilePage.calcVersionNo(user, saveFile, session);
ps.setString(1,saveFile);
ps.setString(2,"" + vno);
ps.setString(3,user);
ps.executeUpdate();
 int fileno=FilePage.GetMax("select max(fileno) as mx from fileupload", session);

String extension=FilePage.getFileExtension(saveFile);

String filepath=FilePage.getCurrentUserDirectory(session) + fileno + "." + extension;

FileOutputStream fileOut = new FileOutputStream(filepath);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();
//out.println("File saved as " +saveFile  );
//out.print("Your file has been uploaded!" +"<a href = 'FILEUPLOADPAGE.jsp'>Go Back</a>");

response.sendRedirect("FILEUPLOADPAGE.jsp");
ConnectionClass.close(ps);






}
%>