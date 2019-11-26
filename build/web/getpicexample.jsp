
<%@page import="java.io.DataOutputStream"%>
<%@page import="java.io.DataInputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%
try
{
    response.setContentType("image/jpeg");
    String src= request.getParameter("src");
    
   //  String src=LoginManager.currentUser(session);
//   String src = "D:\\Parul.jpg";
 //   src="F:\\JAVAPROJECT\\Group 3\\Online chat system\\web\\profilepic\\" + src + ".jpg";
    
    src="C:\\Users\\Avinash\\Documents\\WebApplication1\\web\\profilepic\\" + src + ".jpg";
FileInputStream f1=new FileInputStream(src);
//OutputStream f2=response.getOutputStream();
DataInputStream in=new DataInputStream(f1);
DataOutputStream fout=new DataOutputStream(response.getOutputStream());
int n=in.read();
while(n!=-1)
{
fout.write(n);
n=in.read();
}
fout.flush();
fout.close();
in.close();
}
catch(Exception ex)
{
System.out.println(ex);
}


%>
