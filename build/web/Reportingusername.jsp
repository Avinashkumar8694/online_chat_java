<%
    String user=request.getParameter("user");
    session.setAttribute("reportinguser", user);
    response.sendRedirect("CHATHISTORY.jsp");
    %>