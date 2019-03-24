<%-- 
    Document   : delete
    Created on : Mar 24, 2019, 2:42:33 PM
    Author     : anarx
--%>

<%@page import="az.phonebook.model.PhoneBook"%>
<%@page import="az.phonebook.fileop.FileOperation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% FileOperation fo = new FileOperation();

            try {
                String id = request.getParameter("pid");

                fo.deletePhoneBook(Integer.parseInt(id));
                RequestDispatcher rd = request.getRequestDispatcher("list.jsp");
                //rd.forward(request, response);
                rd.forward(request, response);
            } catch (Exception e) {
            }
        %>
    </body>
</html>
