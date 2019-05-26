/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package az.login;

import az.database.UserDao;
import az.phonebook.model.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author anarx
 */
public class LoginController extends HttpServlet {

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
            out.println("<title>Servlet LoginController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        if (request.getServletPath().equals("/login/")) {
            RequestDispatcher rd = request.getRequestDispatcher("/login/login.jsp");
            rd.include(request, response);
        }
        if (request.getServletPath().equals("/logoff")) {
            HttpSession session = request.getSession();
            session.removeAttribute("username");
            session.removeAttribute("password");
            session.invalidate();
            response.sendRedirect(request.getContextPath() + "/login/");

        }

        if (request.getServletPath().equals("/profile")) {
            HttpSession session = request.getSession();

            if (session.getAttribute("username") != null) {
                request.setAttribute("u", session.getAttribute("username"));
                request.setAttribute("p", session.getAttribute("password"));
                request.setAttribute("user", 
                        new UserDao().
                        getUserByPasswordAnLogin(
                        session.getAttribute("username").toString(), 
                        session.getAttribute("password").toString()));
                
                
                RequestDispatcher rd = request.getRequestDispatcher("/login/profile.jsp");
                rd.include(request, response);

            } else {
                response.sendRedirect(request.getContextPath() + "/login/");
            }

        }

        if (request.getServletPath().equals("/registration")) {

        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getServletPath().equals("/login/")) {

            String u = request.getParameter("username");
            String p = request.getParameter("password");
            System.out.println(u + "  " + p);
          UserDao  dao=new UserDao();
          User user=dao.getUserByPasswordAnLogin(u, p);
          
            if (user!=null) {
                HttpSession session = request.getSession();
                session.setAttribute("username", u);
                session.setAttribute("password", p);
                response.sendRedirect(request.getContextPath() + "/profile");
            } else {
                request.setAttribute("error", "Login or password is inccorrect");
                RequestDispatcher rd = request.getRequestDispatcher("/login/login.jsp");
                rd.include(request, response);
            }

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
