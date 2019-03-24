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
            <% FileOperation fo = new FileOperation();
                PhoneBook pb_update = new PhoneBook();
                pb_update.setId(0);
                try {
                    String id = request.getParameter("pid");
                    System.out.println("pid is  "+id);
                    pb_update = fo.getPhoneBookById(Integer.parseInt(id));
                    System.out.println("155  "+pb_update);
                } catch (Exception e) {
                    pb_update = new PhoneBook();
                }
            %>



            <% try {
                    String id = request.getParameter("id");
                    String name = request.getParameter("name");
                    String sname = request.getParameter("surname");
                    String email = request.getParameter("email");
                    String phone = request.getParameter("phone");
                    String address = request.getParameter("address");

                   
                    //   pb.setId(fo.getNextId());
                    PhoneBook pb = new PhoneBook();
                    pb.setName(name);
                    pb.setSurname(sname);
                    pb.setEmail(email);
                    pb.setPhone(phone);
                    pb.setAddress(address);
                    System.out.println("pb  is " + pb);
                    ///validator 

                    // check all parameter if all param are setted then write to file
                    //if (pb.getEmail()!=null )
                    System.out.println("email is  " + pb.getEmail().length());
                    if ((pb.getName() != null && pb.getName().length() > 0)
                            && (pb.getSurname() != null && pb.getSurname().length() > 0)
                            && (pb.getEmail() != null && pb.getEmail().length() > 0)
                            && (pb.getPhone() != null && pb.getPhone().length() > 0)
                            && pb.getAddress() != null) {

                        System.out.println("pb if true " + pb);
                      
                        if (  !id.equals("0")){
                            pb.setId(Integer.parseInt(id));
                            fo.updatePhoneBook(pb);
                              System.out.println("pb if update " + pb);
                        }else{
                            pb.setId(fo.getNextId());
                            fo.addPhonebook(pb);
                              System.out.println("pb if new " + pb);
                        }
                        RequestDispatcher rd = request.getRequestDispatcher("list.jsp");
                        //rd.forward(request, response);
                        rd.include(request, response);

                    } else {
                        System.out.println("pb if false " + pb);
                        pageContext.setAttribute("error", "Please fill all input");

                    }

                } catch (Exception e) {
                    e.printStackTrace();
                }

            %>
            <h2>Horizontal form</h2>       <a href="list.jsp">All Contact</a>

            <%                try {
                    String err = pageContext.getAttribute("error").toString();
                    if (err != null && err.length() > 0) {
                        out.print(err);
                    }
                } catch (Exception e) {

                }


            %>

            <form class="form-horizontal" action="" method="GET">
                <input type="hidden" 
                       name="id" 
                       value="<%= pb_update.getId() %>">
                
                <div class="form-group">
                    <label class="control-label col-sm-2" for="name"> Name</label>
                    <div class="col-sm-10">
                        <input type="text" 
                               class="form-control" 
                               id="name" placeholder="Enter name" 
                               name="name"
                               value="<% if(pb_update.getName()!=null){
                                          out.print(pb_update.getName());} %>">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2" for="surname"> SurName</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" 
                               id="surname" 
                               placeholder="Enter surname" 
                               name="surname"
                               value="<% if(pb_update.getName()!=null){
                                          out.print(pb_update.getSurname());}%>">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="email"> Email</label>
                    <div class="col-sm-10">
                        <input type="email" 
                               class="form-control" 
                               id="email"
                               placeholder="Enter email" 
                               name="email"
                               value="<% if(pb_update.getName()!=null){
                                          out.print(pb_update.getEmail());}%>">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2" for="phone"> Phone</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" 
                               id="phone" placeholder="Enter phone" 
                               name="phone" value="<% if(pb_update.getName()!=null){
                                          out.print(pb_update.getPhone());}%>">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2" for="address"> Address</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" 
                               id="address" placeholder="Enter address" 
                               name="address" value="<%  if(pb_update.getName()!=null){
                                          out.print(pb_update.getAddress());}%>">
                    </div>
                </div>


                <div class="form-group">        
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Add or Edit</button>
                    </div>
                </div>
            </form>
        </div>



    </body>
</html>
