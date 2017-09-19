/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import controllers.PersonController;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Person;
import model.Role;
import model.State;
import model.TrainingCenter;

/**
 *
 * @author FERGO
 */
@WebServlet(name = "ServletEmployee", urlPatterns = {"/ServletEmployee"})
public class ServletPerson extends HttpServlet {

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
            if (request.getParameterValues("buttonU") != null) {
                Person e = new Person();
                PersonController eC = new PersonController();

                e.setName(request.getParameter("nom"));
                e.setLastName(request.getParameter("lastNamenom"));
                e.setNumber(Long.parseLong(request.getParameter("phonenom")));
                e.setAddress(request.getParameter("addressnom"));
                e.setCode(Long.parseLong(request.getParameter("codenom")));
                if (eC.update(e) == true) {
                    e = null;
                    eC = null;
                    out.print("1");
                    
                } else {
                    e = null;
                    eC = null;
                    
                }
            } else if (request.getParameterValues("changePass") != null) {
                Person e = new Person();
                PersonController eC = new PersonController();
                e.setCode(Long.parseLong(request.getParameter("codem")));
                e.setPassword(request.getParameter("pass"));
                if (eC.resetPassword(e) == true) {
                    e = null;
                    eC = null;
                    out.println("1");
                } else {
                    e = null;
                    eC = null;
                    response.sendRedirect("forms/ResetPassword.jsp");
                }
            } else if (request.getParameterValues("btRegister") != null) {
                Person e = new Person();
                PersonController eC = new PersonController();
                TrainingCenter tC = new TrainingCenter();
                State s= new State();
                s.setCode(2);
                e.setIdState(s);
                tC.setCode(Long.parseLong(request.getParameter("txtCmbComp2")));
                e.setIdCenter(tC);
                e.setCode(Long.parseLong(request.getParameter("txtCode")));
                e.setName(request.getParameter("txtName"));
                e.setLastName(request.getParameter("txtLastName"));
                e.setAddress(request.getParameter("txtAddress"));
                e.setNumber(Long.parseLong(request.getParameter("txtNumber")));
                e.setBirthDate(Date.valueOf(request.getParameter("txtDate")));
                e.setEmail(request.getParameter("txtEmail"));
                e.setPassword(request.getParameter("txtPassword"));
                if (eC.register(e) == true) {
                    e = null;
                    eC = null;
                    response.sendRedirect("forms/Register.jsp");
                } else {
                    e = null;
                    eC = null;
                    response.sendRedirect("index.jsp");
                }

            } else if (request.getParameterValues("btEmail") != null) {
                Person e = new Person();
                PersonController eC = new PersonController();
                e.setEmail(request.getParameter("email"));
                if (eC.sendEmail(e) == true) {
                    e = null;
                    eC = null;
                    response.sendRedirect("forms/Reset.jsp");
                } else {
                    e = null;
                    eC = null;
                    response.sendRedirect("index.jsp");
                }
            } else if (request.getParameterValues("btnSendRole") != null) {
                Role r = new Role();
                PersonController eC = new PersonController();
                Person e = new Person();
                e.setCode(Long.parseLong(request.getParameter("txtId")));
                r.setCode(Long.parseLong(request.getParameter("txtRole")));
                e.setIdRole(r);
                if (eC.assignRole(e) != 0) {
                    r = null;
                    e = null;
                    eC = null;
                    response.sendRedirect("forms/Roles.jsp");
                } else {
                    r = null;
                    e = null;
                    eC = null;
                    response.sendRedirect("forms/Home.jsp");
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
