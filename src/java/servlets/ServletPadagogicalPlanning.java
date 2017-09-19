/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import controllers.PadagogicalPlanningController;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.FormativeProject;
import model.PadagogicalPlanning;

/**
 *
 * @author REDP
 */
@WebServlet(name = "ServletPadagogicalPlanning", urlPatterns = {"/ServletPadagogicalPlanning"})
public class ServletPadagogicalPlanning extends HttpServlet {

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
          if(request.getParameterValues("btSend")!=null)
          {
              try
              {
              PadagogicalPlanningController pPC = new PadagogicalPlanningController();
              FormativeProject fP = new FormativeProject();
              PadagogicalPlanning pP = new PadagogicalPlanning();
              pP.setCityDate(request.getParameter("txtCity"));
              pP.setStartDate(request.getParameter("txtStartDate"));
              pP.setEndingDate(request.getParameter("txtEndingDate"));
              pP.setEnvironment(request.getParameter("txtEnv"));
              pP.setMaterialD(request.getParameter("txtMD"));
              pP.setMaterialC(request.getParameter("txtMC"));
              fP.setCode(Long.parseLong(request.getParameter("txtCodeF")));
              pP.setIdFormativeP(fP);
              if(pPC.register(pP)==true)
              {
                  //response.sendRedirect("forms/planeacionP.jsp");
                  out.print("1");
              }
              else
              {
                  out.println("2"); 
              }
              }
              catch(Exception e)
              {
                  response.sendRedirect("error");
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
