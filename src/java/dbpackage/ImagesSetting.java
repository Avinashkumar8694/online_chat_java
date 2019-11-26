/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dbpackage;

import com.google.common.base.Function;
import javax.jms.Session;
import javax.servlet.http.HttpSession;

/**
 *
 * @author PARUL JAISWAL
 */
public class ImagesSetting {
    public static String getCurrentUserImage(HttpSession session)
            {
               
                String username= LoginMgrClass.getCurrentUser(session);
                String path = "profilepic//" + username + ".jpg";
                String rnd = ImagesSetting.getRandom(); 
                String img = "<img style=' border-radius:15px; width='150px'; height='150px';' src ='getpicexample.jsp?src="+ username +"&rnd=" + rnd + "'alt=''/>";
                return img;
                
                
                
            }
    
    public static String getUserImage(HttpSession session, Object user)
            {
               
                String username= ""+ user;
                String path = "profilepic//" + username + ".jpg";
                String rnd = ImagesSetting.getRandom(); 
 String img = "<img width=50px height=50px src ='getpicexample.jsp?src="+ username +"&rnd=" + rnd + "'alt=''/>";
                return img;
                
                
                
            }
    
    
   public static String  getprofilepath()
    {
      //  String path="F:\\JAVAPROJECT\\Group 3\\Online chat system\\web\\profilepic\\";
       String path="C:\\Users\\Avinash\\Documents\\WebApplication1\\web\\profilepic\\";
              return path;
    }
    
   
   public static String getRandom()
   {
       String n = "" +(int)(2000 * Math.random());
       return  n;
   }
   
    public static String getUserImage1(HttpSession session, Object user)
            {
               
                String username= ""+ user;
                String path = "profilepic//" + username + ".jpg";
                String rnd = ImagesSetting.getRandom(); 
 String img = "<img width=150px height=150px src ='getpicexample.jsp?src="+ username +"&rnd=" + rnd + "'alt=''/>";
                return img;
                
                
                
            }
     public static String chattoimage(Object user)
   {
       try
       {
           String src= ""+ user;
           String rnd=getRandom();
           String img= "<img height='150px' width='150px' src='getpicexample.jsp?src="+src+"&rnd=" + rnd + "' alt=''/>" ;
           return img;
       }
       catch(Exception ex)
       {
           System.out.println(ex);
           return "";
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
    public static String GetImage(HttpSession session)
   {
       try
       {
           String src=LoginMgrClass.getCurrentUser(session);
           String rnd=getRandom();
         //  String img= "<img style=' border-radius:20px; width='200px'; height='150px'; ' src='getpicexample.jsp?src="+src+"&rnd=" + rnd + "' alt=''/>" ;
          String img= "<img  style='width:100%; height:100%;border-radius: 10%;' src='getpicexample.jsp?src="+src+"&rnd=" + rnd + "' alt=''/>" ;
           return img;
       }
       catch(Exception ex)
       {
           System.out.println(ex);
           return "";
       }
   }
}
