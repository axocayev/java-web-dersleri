<%-- 
    Document   : getrequesteddat
    Created on : Mar 3, 2019, 12:53:46 PM
    Author     : anarx
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
              String fullname=request.getParameter("fullname");
              String email=request.getParameter("email");
              String gender=request.getParameter("gender");
              
              out.print("<b>Full name is :</b>"+fullname);
              out.print("<br><b>Email  is :</b>"+email);
              out.print("<br><b>Gender  is :</b>"+gender);

        
        %>
    </body>
</html>
