<%-- 
    Document   : index
    Created on : Mar 3, 2019, 12:11:50 PM
    Author     : anarx
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        out.print("<h3>Salam</h3>");
        out.print("Today id: "+new Date() );
        int k=15;
        int y=25;
        out.print("<br><b>");
        if(k>y ){
            out.print("Multiply "+k*y);
        }else{
            out.print("Sum "+(k+y));
        }
        out.print("</b>");
        %>
    </body>
</html>
