<%
String s=request.getParameter("cons");
//String a="java.sql.SQLException: ORA-00001: unique constraint (CHAT.SYS_C003998) violated";
//String a= "ORA-00001: unique constraint (CHAT.SYS_C004021) violated";
String a="java.sql.SQLException: ORA-00001: unique constraint (CHAT.SYS_C004021) violated";

if(s.equals(a))
    out.print("User already Registered");
else
{
    out.print("You are Successfully Registered!!!");
}
%>