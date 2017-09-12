/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import controllers.DescriptionEvidenceLearningController;
import controllers.EvaluationCriteriaController;
import controllers.LearningActivityController;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.DescriptionEvidenceLearning;
import models.EvaluationCriteria;
import models.LearningActivity;
import models.LearningOutcomes;

/**
 *
 * @author REDP
 */
@WebServlet(name = "ServletLearningActivity", urlPatterns = {"/ServletLearningActivity"})
public class ServletLearningActivity extends HttpServlet {

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
            if(request.getParameterValues("btPlaneacionPart2")!=null)
            {
                try
                {
                    LearningActivity lA= new LearningActivity();
                    LearningOutcomes lO = new LearningOutcomes();
                    LearningActivityController lAC = new LearningActivityController();
                    EvaluationCriteria eC = new EvaluationCriteria();
                    DescriptionEvidenceLearning dEL = new DescriptionEvidenceLearning();
                    DescriptionEvidenceLearningController dELC = new DescriptionEvidenceLearningController();
                    EvaluationCriteriaController eCC = new EvaluationCriteriaController();
                    
                    //envio de datos principales para actividad
                    lA.setName(request.getParameter("txtActivityDescription"));
                    lA.setTime(Long.parseLong(request.getParameter("txtHoursDuration")));
                    lA.setType(request.getParameter("txtArea"));
                    lA.setStrategy(request.getParameter("txtDidacticStrategy"));
                    lO.setCode(Long.parseLong(request.getParameter("txtCodeLearningOutcomes")));
                    lA.setIdLO(lO);
                    
                    //envio de datos principales para criterios de evaluación
                    eC.setDescription(request.getParameter("txtCriterioEvaluation"));
                    eC.setIdLO(lO);
                    //envio de datos principales para descripción de evidencia de apredizaje
                    dEL.setDescription(request.getParameter("txtDescriptionEvidence"));
                    dEL.setType(request.getParameter("txtTypeEvidence"));
                    dEL.setIdLO(lO);
                    
                    if(lAC.register(lA)==true)
                    {
                       if(dELC.register(dEL)==true)
                       {
                           if(eCC.register(eC)==true)
                           {
                               response.sendRedirect("forms/Home.jsp");
                           }
                       }
                    }
                    else
                    {
                        response.sendRedirect("error");
                    }
                    
                    
                }
                catch(Exception e)
                {
                    out.println("error");
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
