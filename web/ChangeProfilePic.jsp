<%@page import="dbpackage.FilePage"%>
<%@page import="dbpackage.LoginMgrClass"%>
<%@page import="dbpackage.ImagesSetting"%>
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

String file = new String(dataBytes);
String saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));   //geting the image name

//out.print(dataBytes);

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


String path=ImagesSetting.getprofilepath();                             //geting the profile pic path to upload
String Currentuser=LoginMgrClass.getCurrentUser(session);               //getting the current user name

//String filepath=path+ saveFile; 
String filepath=path + Currentuser + "." + FilePage.getFileExtension(saveFile);    //setting the file path to upload
 

FileOutputStream fileOut = new FileOutputStream(filepath);


//fileOut.write(dataBytes);
fileOut.write(dataBytes, startPos, (endPos - startPos));  // uploading image
fileOut.flush();
fileOut.close();

out.println("File saved as " +Currentuser);
response.sendRedirect("ChangeProfilePicSup.jsp");

}
%>