<%-- 
    Document   : calc
    Created on : Mar 3, 2019, 1:02:54 PM
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
        <form action=""  method="GET">
            
            A:<input  type="number" name="a"><br>
            B:<input  type="number" name="b"><br>
            Operation<input type="radio" name="operator" value="+">+
                    <input type="radio" name="operator" value="-">-
                    <input type="radio" name="operator" value="*">*
                    <input type="radio" name="operator" value="/">/
                    <br>
            <input type="submit" value="Calculate">        
        </form>
        
        
         <%
             try{
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
             }catch(NullPointerException e){
                 out.print(e.getMessage());
             }


        %>
    </body>
</html>
