/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dbpackage;

import static dbpackage.ConnectionClass.close;
import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.jms.Session;
import javax.servlet.http.HttpSession;

/**
 *
 * @author PARUL JAISWAL
 */
public class FilePage {
   // private static String defaultuploadpath="F:\\JAVAPROJECT\\Group 3\\Online chat system\\web\\up\\";
    
    private static String defaultuploadpath="C:\\Users\\Avinash\\Documents\\WebApplication1\\web\\up\\";
    public static int calcVersionNo(Object user,Object filename, HttpSession session) throws SQLException
    {
        Connection conn = ConnectionClass.Connect(session);
        String sql = "select Count(*)  as versionno from fileupload where username = ? and filename = ?";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1,"" + user);
        ps.setString(2,"" + filename);
        ResultSet rs=ps.executeQuery();
        rs.next();
        int vno =Integer.parseInt(""+rs.getObject("versionno"));
        vno = vno + 1;
        return vno;
        
        
        
   }
    
    
    public static String getFileExtension(String filename)
   {
       try
       {
           filename=filename.trim();
           int index=filename.lastIndexOf(".");
           if(index<0)
               return "";
           String extension=filename.substring(index+1).trim();
           return extension;
       }
       catch(Exception ex)
       {
           System.out.println(ex);
           return "";
       }
   }
    
    
     public static int GetMax(String query,HttpSession session)
    {
        try
        {
            
            Connection conn = ConnectionClass.Connect(session);
            
            PreparedStatement ps=conn.prepareStatement(query);
            ResultSet rs=ps.executeQuery();
            rs.next();
            int n=Integer.parseInt("" + rs.getObject("mx"));
            close(ps);
            close(rs);
            return n;
        }
        catch(Exception ex)
        {
            System.out.println(ex);
            return -1;
            
        }
    }
     
      public static String getCurrentUserDirectory(HttpSession session)
   {
       try
       {
    //   if(!LoginManager.isUserLoggedIn(session))
          // return "";
       String currentuser=LoginMgrClass.getCurrentUser(session);
       String directorypath=defaultuploadpath + currentuser + "\\";
       File file=new File(directorypath);
       if(file.exists())
           return directorypath;
      boolean b= file.mkdir();
      if(b)
          return directorypath;
      return "";
               }
       catch(Exception ex)
       {
           System.out.println(ex);
           return "";
       }
   }
      
      public static void removefiles(HttpSession session, Object fileno) throws SQLException
       {
           Connection con = ConnectionClass.Connect(session);
           
           String sql1 = "delete from fileshare where file_no = ?";
           PreparedStatement ps1 = con.prepareStatement(sql1);
           ps1.setString(1,""+ fileno);
           ps1.executeUpdate();
           
           String sql = "delete from fileupload where fileno = ?";
           PreparedStatement ps = con.prepareStatement(sql);
           ps.setString(1,""+ fileno);
           ps.executeUpdate();
           
           
           
           ConnectionClass.close(ps);
           ConnectionClass.close(ps1);
       }
      
      
       public static boolean deleteFile(HttpSession session, Object fileno)
       {
           try
           {
               String filename=filepath(session, fileno);
               
               File f=new File(filename);
               
              boolean b= f.delete();
              return b;
           }
           catch(Exception ex)
           {
               System.out.println(ex);
               return false;
           }
       }
       public static String filepath(HttpSession session, Object fileno) 
       {
           try
           {
               
           
           Connection con = ConnectionClass.Connect(session);
           String sql3 = "select filename as files from fileupload where fileno = ?";
           PreparedStatement ps2 =  con.prepareStatement(sql3);
           ps2.setString(1, ""+fileno);
           ResultSet rs = ps2.executeQuery();
        rs.next();
            
           String filename = ""+rs.getObject("files");
          System.out.print(filename);
         
         String  ext = FilePage.getFileExtension(filename);
         
        // String filepath = usercurrentdirectory +"\\"+ fileno+ "." + ext;
         
         String filepath=FilePage.getCurrentUserDirectory(session) + fileno + "." + ext;
         
         System.out.println(filepath);
         return  filepath;
           }
           catch(Exception ex)
           {
               System.out.println(ex);
               return "" + ex;
           }
         
       }
       public  static boolean deluserfromlogin(Object user, HttpSession session)
       {
           try
           {
               Connection con = ConnectionClass.Connect(session);
               String sql="delete from login where user_name=?";
               PreparedStatement ps=con.prepareStatement(sql);
               ps.setString(1, ""+user);
               ps.executeQuery();
               return true;
           }
           catch(Exception ex)
           {
               return false;
           }
       }
       
       public  static boolean deluserfromcha_with(Object user, HttpSession session)
       {
           try
           {
               Connection con = ConnectionClass.Connect(session);
               String sql="delete from chat_with where msgffrom =? or MSGTO =?";
               PreparedStatement ps=con.prepareStatement(sql);
               ps.setString(1, ""+user);
               ps.setString(2, ""+user);
               ps.executeQuery();
               return true;
           }
           catch(Exception ex)
           {
               return false;
           }
       }
       
       public  static boolean deluserfromReadReport(Object user, HttpSession session)
       {
           try
           {
               Connection con = ConnectionClass.Connect(session);
               String sql="delete from READREPORT where SENDERUSER =?";
               PreparedStatement ps=con.prepareStatement(sql);
               ps.setString(1, ""+user);
               ps.executeQuery();
               return true;
           }
           catch(Exception ex)
           {
               return false;
           }
       }
       public  static boolean deluserfromFilesshare(Object user, HttpSession session)
       {
           try
           {
               Connection con = ConnectionClass.Connect(session);
               String sql="delete from fileshare where sharedby=? or SHAREDWITH =?";
               PreparedStatement ps=con.prepareStatement(sql);
               ps.setString(1, ""+user);
                ps.setString(2, ""+user);
               ps.executeQuery();
               return true;
           }
           catch(Exception ex)
           {
               return false;
           }
       }
       public  static boolean deluserfromFileUpload(Object user, HttpSession session)
       {
           try
           {
               Connection con = ConnectionClass.Connect(session);
               String sql="delete from fileupload where username=?";
               PreparedStatement ps=con.prepareStatement(sql);
               ps.setString(1, ""+user);
               ps.executeQuery();
               return true;
           }
           catch(Exception ex)
           {
               return false;
           }
       }
       public  static boolean deluserfromchatusers(Object user, HttpSession session)
       {
           try
           {
               Connection con = ConnectionClass.Connect(session);
               String sql="delete from chat_users where user_name=?";
               PreparedStatement ps=con.prepareStatement(sql);
               ps.setString(1, ""+user);
               ps.executeQuery();
               return true;
           }
           catch(Exception ex)
           {
               return false;
           }
       }
        public static boolean blockuser(Object user, HttpSession session)
         {
             try
             {
                 Connection con=ConnectionClass.Connect(session);
                 String status=LoginMgrClass.getCurrentUser(session)+ "Blocked";
                 
                 String sql1="select count(*) as num from request  where (senderuser=? and receiveruser=?) or (senderuser=? and receiveruser=?) ";
                 PreparedStatement ps1= con.prepareStatement(sql1);
                 ps1.setString(1, ""+user);
                 ps1.setString(2, LoginMgrClass.getCurrentUser(session));
                ps1.setString(3, LoginMgrClass.getCurrentUser(session));
                   ps1.setString(4, ""+user);
                 ResultSet rs = ps1.executeQuery();
                 rs.next();
                 int n = Integer.parseInt(""+rs.getObject("num"));
                 
                 if(n!=0)
                 {
                     
                 
                 
                 String sql="update request set status=? where (senderuser=? and receiveruser=?) or (senderuser=? and receiveruser=?) ";
                 PreparedStatement ps= con.prepareStatement(sql);
                 ps.setString(1, status);
                 ps.setString(2, ""+user);
                 ps.setString(3, LoginMgrClass.getCurrentUser(session));
                ps.setString(4, LoginMgrClass.getCurrentUser(session));
                   ps.setString(5, ""+user);
                  ps.executeUpdate();
                
                 } return true;
             }
             catch(Exception ex)
             {
                 return false;
             }
         }
       public static int stopblockedusertobesearched(Object user, HttpSession session)
         {
             try
             {
              Connection con=ConnectionClass.Connect(session);
             String sql1="select count(*) as num from request  where (senderuser=? and receiveruser=?) or (senderuser=? and receiveruser=?) ";
                 PreparedStatement ps1= con.prepareStatement(sql1);
                 ps1.setString(1, ""+user);
                 ps1.setString(2,LoginMgrClass.getCurrentUser(session));
                ps1.setString(3,LoginMgrClass.getCurrentUser(session));
                   ps1.setString(4, ""+user);
                 ResultSet rs = ps1.executeQuery();
                 rs.next();
                 int n = Integer.parseInt(""+rs.getObject("num"));
                 return n;
             }
             catch(Exception ex)
             {
                 return 0;
             }
         }
       public static boolean unfrienduser(Object user, HttpSession session)
         {
             try
             {
                 Connection con=ConnectionClass.Connect(session);
                 String sql="delete from request where senderuser =? and receiveruser = ? or senderuser=? and receiveruser = ? ";
                 PreparedStatement ps= con.prepareStatement(sql);
                 ps.setString(1, ""+user);
                 ps.setString(2, LoginMgrClass.getCurrentUser(session));
                ps.setString(3, LoginMgrClass.getCurrentUser(session));
                   ps.setString(4, ""+user);
                  ps.executeUpdate();
                 return true;
             }
             catch(Exception ex)
             {
                 return false;
             }
         }
        public static String getUserDirectory(Object user, HttpSession session)
   {
       try
       {
    
       String directorypath=defaultuploadpath + user + "\\";
       File file=new File(directorypath);
       if(file.exists())
           return directorypath;
       return "";
      
               }
       catch(Exception ex)
       {
           System.out.println(ex);
           return "";
       }
   }
        
        
         public  static boolean DeleteFromREQUEST(Object user, HttpSession session)
       {
           try
           {
               Connection con = ConnectionClass.Connect(session);
               String sql="delete from REQUEST where SENDERUSER=? or RECEIVERUSER=?";
               PreparedStatement ps=con.prepareStatement(sql);
               ps.setString(1, ""+user);
                ps.setString(2, ""+user);
               ps.executeQuery();
               return true;
           }
           catch(Exception ex)
           {
               return false;
           }
       }
}
