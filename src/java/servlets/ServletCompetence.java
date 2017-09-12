/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import controllers.CompetenceController;
import controllers.CurricularDesignController;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Competence;
import models.CurricularDesign;

/**
 *
 * @author FERGO
 */
@WebServlet(name = "ServletCompetence", urlPatterns = {"/ServletCompetence"})
public class ServletCompetence extends HttpServlet {

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
        
            if (request.getParameterValues("btAgregar") != null) {

                    CompetenceController cC = new CompetenceController();
                    Competence c = new Competence();
                    CurricularDesign cD = new CurricularDesign();
                    CurricularDesignController cDC = new CurricularDesignController();
                    c.setCode(Long.parseLong(request.getParameter("txtCode")));
                    c.setName(request.getParameter("txtName"));
                    c.setVersion(Long.parseLong(request.getParameter("txtVersion")));
                    c.setDuration(Integer.parseInt(request.getParameter("txtDuration")));
                    c.setKnowledgeConceptsPrinciples(request.getParameter("txtKCP"));
                    c.setProcessknowledge(request.getParameter("txtPK"));
                    c.setEvaluationCriteria(request.getParameter("txtEC"));
                    cD.setCode(Long.parseLong(request.getParameter("txtIdCD")));
                    cD.setCurricularDesignCompetence(c);

                    if (cC.registerCompetence(c) == true) {
                        if (cDC.assignCompetence(cD) == true) {
                            response.sendRedirect("forms/DisenoC1.jsp");
                        }

                    } else {
                        out.println("error en competencia");
                    }
            }
            else if(request.getParameterValues("btAsi")!=null) {
                    CurricularDesignController cDC = new CurricularDesignController();
                    Competence c = new Competence();
                    CurricularDesign cD = new CurricularDesign();
                    c.setCode(Long.parseLong(request.getParameter("txtCmbComp")));
                    cD.setCode(Long.parseLong(request.getParameter("txtIdCD")));
                    cD.setCurricularDesignCompetence(c);
                    if(cDC.assignCompetence(cD) == true)
                    {
                        response.sendRedirect("forms/DisenoC1.jsp");
                    }
                    else
                    {
                        out.println("error al asignar las competencias");
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
