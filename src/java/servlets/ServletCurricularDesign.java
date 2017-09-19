/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import controllers.CurricularDesignController;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Competence;
import model.CurricularDesign;
import model.State;

/**
 *
 * @author FERGO
 */
@WebServlet(name = "ServletCurricularDesign", urlPatterns = {"/ServletCurricularDesign"})
public class ServletCurricularDesign extends HttpServlet {

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
            //Insertar dise�ocurricular.
            if (request.getParameterValues("btSendDC") != null) {
                try {
                    //
                    CurricularDesign cD = new CurricularDesign();
                    CurricularDesignController cDC = new CurricularDesignController();
                    State s = new State();
                    cD.setCode(Long.parseLong(request.getParameter("txtCode")));
                    cD.setVersion(Long.parseLong(request.getParameter("txtVersion")));
                    cD.setName(request.getParameter("txtName"));
                    cD.setStartDate(Date.valueOf(request.getParameter("txtStartDate")));
                    cD.setEndingDate(request.getParameter("txtEnndingDate"));
                    cD.setLectivaDuration(Integer.parseInt(request.getParameter("txtLectivaDuration")));
                    cD.setPracticeDuration(Integer.parseInt(request.getParameter("txtPracticeDuration")));
                    cD.setLevelOfTraining(request.getParameter("txtLevelT"));
                    cD.setJustification(request.getParameter("txtJustify"));
                    cD.setRequirements(request.getParameter("txtRequerimentsI"));
                    cD.setDescription(request.getParameter("txtDescription"));
                    cD.setAcademicRequirements(request.getParameter("txtRequerimentsIns"));
                    cD.setWorkExperiencie(request.getParameter("txtWorkIns"));
                    cD.setMinimumCompetencies(request.getParameter("txtCompeteceIns"));
                    cD.setStrategy(request.getParameter("txtStragedyIns"));
                    s.setCode(2);
                    cD.setStateCode(s);
                    if (cDC.registerDC(cD) == true) {
                        cD = null;
                        cDC = null;
                        response.sendRedirect("forms/Home.jsp?confirmP2=dc2");
                    } else {
                        out.println("error primera parte diseno curricular");
                    }
                } catch (Exception e) {
                    response.sendRedirect("forms/error.jsp");
                }
                
            } else if (request.getParameterValues("") != null)//asignaci�n de competencias
            {
                Competence c = new Competence();
                CurricularDesign cD = new CurricularDesign();
                CurricularDesignController cDC = new CurricularDesignController();
                c.setCode(Long.parseLong(request.getParameter("txtCompetence")));
                cD.setCurricularDesignCompetence(c);
                cD.setCode(Long.parseLong(request.getParameter("txtCode")));
                cDC.assignCompetence(cD);
                
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
