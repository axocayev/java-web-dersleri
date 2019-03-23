<%-- 
    Document   : newphonebook
    Created on : Mar 23, 2019, 5:44:23 PM
    Author     : anarx
--%>

<%@page import="az.phonebook.fileop.FileOperation"%>
<%@page import="az.phonebook.model.PhoneBook"%>
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
            <h2>Horizontal form</h2>  
            <form class="form-horizontal" action="" method="GET">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="name"> Name</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="name" placeholder="Enter name" name="name">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2" for="surname"> SurName</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="surname" placeholder="Enter surname" name="surname">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="email"> email</label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2" for="phone"> phone</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="phone" placeholder="Enter phone" name="phone">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2" for="address"> address</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="address" placeholder="Enter address" name="address">
                    </div>
                </div>


                <div class="form-group">        
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Submit</button>
                    </div>
                </div>
            </form>
        </div>
        
        <% try{
            String name=request.getParameter("name");
            String sname=request.getParameter("surname");
            String email=request.getParameter("email");
            String phone=request.getParameter("phone");
            String address=request.getParameter("address");
            PhoneBook pb=new PhoneBook();
            pb.setId(0);
            pb.setName(name);
            pb.setSurname(sname);
            pb.setEmail(email);
            pb.setPhone(phone);
            pb.setAddress(address);
            ///validator 
            
            // check all parameter if all param are setted then write to file
            //if (pb.getEmail()!=null )
            FileOperation fo=new FileOperation();
            fo.addPhonebook(pb);
            
        }catch(Exception e){
            
        }
        
        %>
        
    </body>
</html>
