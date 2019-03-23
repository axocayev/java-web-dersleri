<%-- 
    Document   : list
    Created on : Mar 23, 2019, 4:28:49 PM
    Author     : anarx
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="az.phonebook.fileop.FileOperation"%>
<%@page import="az.phonebook.model.PhoneBook"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    <body>

        <div class="container">
            <table class="table table-hover table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Ad</th>
                        <th>Soyad</th>
                        <th>Email</th>
                        <th>Telefon</th>
                        <th>Adres</th>
                        <th>Əməliyyatlar</th>
                    </tr>
                </thead>
                <tbody>
                    <%  FileOperation fo = new FileOperation();
                        List<PhoneBook> list = fo.getAllPhoneBook();
                        for (PhoneBook pb : list) {
                            out.print("<tr>");
                            out.print("<td>"+pb.getId()+"</td>");
                            out.print("<td>"+pb.getName()+"</td>");
                            out.print("<td>"+pb.getSurname()+"</td>");
                            out.print("<td>"+pb.getEmail()+"</td>");
                            out.print("<td>"+pb.getPhone()+"</td>");
                            out.print("<td>"+pb.getAddress()+"</td>");
                            out.print("<td><a href=#>Update</a></td>");

                            out.print("</tr>");
                        }
                    %>




                </tbody>

            </table>
        </div>
    </body>
</html>
