
package dbpackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.http.HttpSession;

/**
 *
 * @author PARUL JAISWAL
 */
public class ConnectionClass {
    
    
      public static void close(PreparedStatement ps)
    {
        try
        {
            ps.close();
            
            
        }
        catch(Exception ex)
        {
            System.out.println(ex);
        }
    }
    public static void close(ResultSet rs)
    {
        try
        {
            rs.close();
            
        }
        catch(Exception ex)
        {
            System.out.println(ex);
        }
    }
    
    
    public static Connection Connect(HttpSession session)
    {
        try {
            if(session.getAttribute("con")!= null)
                return (Connection)session.getAttribute("con");
            DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
            String username = "chat" ,password = "chat";
            String url = "jdbc:oracle:thin:@localhost:1521:XE";
            Connection con = DriverManager.getConnection(url, username, password);
            session.setAttribute("con", con);
            return con;
            
        }
        
        catch (Exception ex) {
            System.out.print("not connected" + ex);
            
        }
        return null;
       
        
    }
    
}
