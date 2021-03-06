/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import controllers.PersonController;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Person;

/**
 *
 * @author REDP
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

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

            if (request.getParameterValues("btLongin") != null) {
                Iterator it2 = null;
                Person e = new Person();
                PersonController eC = new PersonController();

                e.setEmail(request.getParameter("txtEmail"));
                e.setPassword(request.getParameter("txtPassword"));
                
                 HttpSession sessionU= request.getSession();
                if (eC.login(e) == true) {  
                    eC.getPerson(e);
                    it2 = eC.getEmployeeList().iterator();
                    if(it2.hasNext())
                    {
                        e=(Person)it2.next();
                          sessionU.setAttribute("session", e.getCode());
                     sessionU.setAttribute("session2", e.getName());
                     sessionU.setAttribute("session3", e.getAddress());
                     sessionU.setAttribute("session4", e.getNumber());
                     sessionU.setAttribute("session5", e.getLastName());
                     eC = null;
                     if(e.getName()!= null){
                    sessionU.setAttribute("show", "si");
                     }else {
                    sessionU.setAttribute("show", "no");
                     }
                   response.sendRedirect("forms/Home.jsp");
                    }
                    
                   
                 
                    

                } else {
                    e = null;
                    eC = null;
                    response.sendRedirect("forms/Login_1.jsp");

                }
            }

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
        processRequest(request, response);
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
        processRequest(request, response);
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
