<%-- 
    Document   : result
    Created on : Mar 3, 2019, 1:05:33 PM
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
                String a = request.getParameter("a");
                String b = request.getParameter("b");
                String operator = request.getParameter("operator");
                out.print("Result is :");
                if (operator.equals("+")) {
                    out.print(Double.parseDouble(a) + Double.parseDouble(b));
                }
                if (operator.equals("-")) {
                    out.print(Double.parseDouble(a) - Double.parseDouble(b));
                }
                if (operator.equals("/")) {
                    out.print(Double.parseDouble(a) / Double.parseDouble(b));
                }
                if (operator.equals("*")) {
                    out.print(Double.parseDouble(a) * Double.parseDouble(b));
                }
            


        %>
    </body>
</html>
