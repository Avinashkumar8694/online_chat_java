 /*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dbpackage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jms.Session;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *

 */
public class LoginMgrClass {
    public static boolean doLogin(HttpSession session ,Object username,Object Password, HttpServletResponse response)
    {
      try
        {
            boolean result = LoginMgrClass.isUsernamePasswordCorrect(session,username,Password);
            
            if(!result)
            {
                response.sendRedirect("pop2.jsp");
                
                return true;
                
            }
            session.setAttribute("User", username);
            session.setMaxInactiveInterval(-1); 

            LoginMgrClass.saveLogin(session, username);
            response.sendRedirect("dashboard.jsp");
            
        }
        
        
         catch (Exception ex)
         {
             System.out.println(ex);
       return false;
         }
        return false;
       
        
    }
    
    public static boolean isUsernamePasswordCorrect(HttpSession session,Object username,Object Password)
    {
        try {
            
       
        Connection conn = ConnectionClass.Connect(session);
       String sql = "select * from Chat_users where USER_NAME = ? and PASSWORD = ?";
       //   String sql = "insert into Chat_users values('Avinash','Avi','Avinash','12-10-1996 )";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1,""+username);
        ps.setString(2,""+Password);
        ResultSet rs = ps.executeQuery();
        
        if(rs.next())
        {
            return true;
                   
        
        }
       ConnectionClass.close(ps);
       ConnectionClass.close(rs);
        return false;
        
        
         } 
        catch (Exception ex) {
          System.out.print(ex);
           return false;
           
        }
        
        
        
    }
    public static void saveLogin(HttpSession session,Object username)
    {
        try
        {
            Connection c1 = ConnectionClass.Connect(session);
             String sql1 = "Update Login set STATUS ='out' where user_name = ?";
                PreparedStatement ps1 = c1.prepareStatement(sql1);
                ps1.setString(1,""+username);
                ps1.executeUpdate();
      
         String sql = "Insert into Login values(loginseq.nextval,?,sysdate,sysdate,'active',sysdate)";   
        PreparedStatement ps = c1.prepareStatement(sql);
        ps.setString(1,""+username);
        ps.executeUpdate();
        
       ConnectionClass.close(ps);
         }
        
        catch (Exception ex)
        {
            System.out.println(ex); 
        }
        
        
    }
    
    public static void setActiveTime(HttpSession session,Object username)
    {
        try
        {
            
        Connection c2 = ConnectionClass.Connect(session);
        String sql2 ="Update Login set LAST_ACTIVITY_TIME = sysdate where user_name = ?";
        PreparedStatement ps2= c2.prepareStatement(sql2);
        ps2.setString(1,""+username);
            ps2.executeUpdate();
           ConnectionClass.close(ps2);
        } 
        catch (Exception ex) 
        {
            System.out.println(ex);
        }
                    
    }
    public static void setInactiveTime(HttpSession session,Object username)
    {
        try
        {
        Connection c3 = ConnectionClass.Connect(session);
        String sql3 = "Update login set status = 'inactive' where user_name = ?";
        PreparedStatement ps3 = c3.prepareStatement(sql3);
        ps3.setString(1,""+username);
        ps3.executeUpdate();
        ConnectionClass.close(ps3);
        }
        
        catch (Exception ex)
        {
            System.out.println(ex);
        }
        
        
    }
    public static String getCurrentUser(HttpSession session)
    {
        String currentuser = "" + session.getAttribute("User");
        return (currentuser);
    }
    
    public static  ResultSet getCurrentUserdetail(HttpSession session) throws SQLException
    {
       Connection con = ConnectionClass.Connect(session);
       String currentuser = LoginMgrClass.getCurrentUser(session);
       String sql = "Select * from chat_users where user_name = ?";
       PreparedStatement ps = con.prepareStatement(sql);
       ResultSet rs= ps.executeQuery();
       rs.next();
       return rs; 
       
       
    }
     public static double currentusersactivefriend(Object user, HttpSession session)
    {
        try
        {
            Connection con = ConnectionClass.Connect(session);
            PreparedStatement ps = con.prepareStatement("select round((sysdate-last_activity_time)*24*60,2) as inactivetime from Login where status<>'out' and user_name=?");
            ps.setString(1, ""+user);
            ResultSet rs = ps.executeQuery();
            rs.next();
            double inactiveperiod= Double.parseDouble( "" + rs.getObject("inactivetime"));
             ConnectionClass.close(ps);
             ConnectionClass.close(rs);
          return inactiveperiod;   
             
        }
        catch(Exception ex)
        {
           return 0;
        }
    }
        
         public static int currentusersactivefriendCount(Object user, HttpSession session)
    {
        try
        {
            Connection con = ConnectionClass.Connect(session);
            PreparedStatement ps = con.prepareStatement("select Count(*) as c from Login where status<>'out' and user_name=?");
            ps.setString(1, ""+user);
            ResultSet rs = ps.executeQuery();
            rs.next();
           int inactiveperiod= Integer.parseInt("" + rs.getObject("c"));
           ConnectionClass.close(ps);
             ConnectionClass.close(rs);
          return inactiveperiod;   
             
        }
        catch(Exception ex)
        {
           return 0;
        }
       
    }
         public static String userimage(Object user)
   {
       try
       {
           String src= ""+ user;
           String rnd=getRandom();
           String img= "<img height='50px' width='50px' src='getpicexample.jsp?src="+src+"&rnd=" + rnd + "' alt=''/>" ;
           return img;
       }
       catch(Exception ex)
       {
           System.out.println(ex);
           return "";
       }
   }
     public static String getRandom()
   {
       String output="";
       for(int i=0;i<=5;i++)
       {
           int n=(int)(1000*Math.random());
           output+=n;
           
       }
       return output;
   }
     public static void setInactive(HttpSession session,Object username)
            
    {
        
        try
            
        {
            
        
        Connection con = ConnectionClass.Connect(session);
        
        String sql = "Update Login set Status = 'inactive' where user_name = ?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, ""+ username);
        ps.executeUpdate(); 
        ConnectionClass.close(ps);
        }
        catch(Exception ex)
        {
            System.out.println(ex);
        }
        
    }
     public static boolean isUserLoggedIn(HttpSession session)
    {
       try
       {
           if(session.getAttribute("User")==null)
             return false;
           return true;
       }
       catch(Exception ex)
       {
           System.out.println(ex);
           return false;
       }
    }
      
       public static String reportinguserimage(Object user)
   {
       try
       {
           String src=""+user;
           String rnd=getRandom();
           String img= "<img style=' border-radius:50px; width='150px'; height='100px'; ' src='getpicexample.jsp?src="+src+"&rnd=" + rnd + "' alt=''/>" ;
           return img;
       }
       catch(Exception ex)
       {
           System.out.println(ex);
           return "";
       }
   }
     
     
}

