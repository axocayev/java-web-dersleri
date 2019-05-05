/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package az.phonebook.controlller;

import az.phonebook.fileop.FileOperation;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.nio.*;
import java.nio.charset.Charset;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author anarx
 */
@WebServlet(name = "PhonebookController", urlPatterns = {"/PhonebookController"})

public class PhonebookController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PhonebookController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PhonebookController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PhonebookController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1> GET METHOD REQUESTED</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // processRequest(request, response);

        response.setContentType("text/html;charset=UTF-8");
        /*
        if (!ServletFileUpload.isMultipartContent(request)) {
            throw new ServletException("file missing");
        }
            try {
                response.setContentType("text/plain; charset=US-ASCII");
                response.setCharacterEncoding("US-ASCII");

                PrintWriter w = response.getWriter();
                w.println("Processing upload:\n");

                ServletFileUpload upload = new ServletFileUpload(new DiskFileItemFactory());
                List<FileItem> items = (List<FileItem>) upload.parseRequest(request);
                for (FileItem item : items) {
                    w.printf("File '%s' for field '%s':\n", item.getName(), item.getFieldName());
                    byte[] content = item.get();   // warning: use streams for long files

                    // this line decodes the byte array content as ASCII into a char array:
                    char[] decoded = Charset.forName("US-ASCII")
                            .decode(ByteBuffer.wrap(content)).array();

                    w.print(decoded);
                    w.print("\n\n");
                }
            } catch (FileUploadException e) {
                throw new ServletException(e);
            }
         */
        request.setAttribute("name", "Anar");
        request.setAttribute("surname", "Xocayev");
        request.setAttribute("PBList", new FileOperation().getAllPhoneBook());
        
        RequestDispatcher rd = request.getRequestDispatcher("view.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // processRequest(request, response);

        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PhonebookController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1> DELETE METHOD REQUESTED</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // processRequest(request, response);

        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PhonebookController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1> PUT METHOD REQUESTED</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
