/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import controllers.LearningOutcomesController;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Competence;
import model.LearningOutcomes;

/**
 *
 * @author REDP
 */
@WebServlet(name = "ServletLearningOutcomes", urlPatterns = {"/ServletLearningOutcomes"})
public class ServletLearningOutcomes extends HttpServlet {

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
            if(request.getParameterValues("btAgregar2")!=null)
            {
                Competence C = new Competence();
                LearningOutcomesController lOC = new LearningOutcomesController();
                LearningOutcomes lO = new LearningOutcomes();
                lO.setCode(Long.parseLong(request.getParameter("txtCodeRA")));
                lO.setName(request.getParameter("txtNameRA"));
                lO.setType(request.getParameter("txtType"));
                C.setCode(Long.parseLong(request.getParameter("txtCmbComp2")));
                lO.setCom(C);
                if(lOC.registerLearningOutcomes(lO)==true)
                {
                    response.sendRedirect("forms/DisenoC1.jsp");
                }
                else
                {
                    out.println("error al registrar las ocmpetencias");
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
