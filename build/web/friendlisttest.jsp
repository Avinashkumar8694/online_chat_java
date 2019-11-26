
<%@page import="dbpackage.LoginMgrClass"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbpackage.ConnectionClass"%>
<%@page import="java.sql.Connection"%>
<%
Connection con = ConnectionClass.Connect(session);
String username= LoginMgrClass.getCurrentUser(session);
        PreparedStatement ps = con.prepareStatement("select * from request where receiveruser=? and status=? or senderuser=? and status=?");
        ps.setString(1, username);
        ps.setString(2, "Accepted");
         ps.setString(3, username);
        ps.setString(4, "Accepted");
        ResultSet rs = ps.executeQuery();
        
        while(rs.next())
        {
            String sender = ""+rs.getObject("senderuser");
            String receiver = ""+rs.getObject("receiveruser");
            String User;
            if(sender.equals(username))
                User = receiver;
            else
            {
                User= sender;
            }
            
            int c =LoginMgrClass.currentusersactivefriendCount(User, session);
            if(c==1)
            {
            
                     double inactiveperiod =LoginMgrClass.currentusersactivefriend(User, session); 
                     String ppic= LoginMgrClass.userimage(User);
        
                      LoginMgrClass.setActiveTime(session, User);
         
                      if(inactiveperiod>45)
                      {
                        LoginMgrClass.setInactive(session, User);
                        continue;
                       }
                      String img="<img height='13px' width='13px' src='pics/red.PNG' alt='Inactive for long period' title='Inactive for long period'/>";
       if(inactiveperiod<=15)
           img="<img height='13px' width='13px' src='pics/green.PNG' alt='Inactive for long period' title='Recently active' />";
       else
            if(inactiveperiod<=45)
           img="<img height='13px' width='13px' src='pics/yellow.PNG' alt='Inactive for long period' title='Medium inactive'/>";

       //out.print(img + User);
         
            out.println("<div  style='width:94%; height:50px; border-bottom:green;  position:relative; float:right; top:5px; right:3%;'>");
            out.println("<font size='5' color='green'>");
            out.println("<tr><td width='300px' height='53px'>" + ppic  +"\t\t\t"+ User+ "\t\t"  +  img + "\t\t\t</td><td height='53px'>"  + inactiveperiod +  "(min)</td><td height='53px'>"+ "</td><td><a href='#' onclick=\"selectChatUser('" + User + "')\">Chat</a></td></tr>");
            out.println("</font>"); 
            out.println("</div>");          
         
            }
            
        }
ConnectionClass.close(ps);
ConnectionClass.close(rs);
%>