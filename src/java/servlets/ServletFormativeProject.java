/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//hacemos las debidas importaciones
import model.CurricularDesign;
import model.FormativeProject;
import model.TrainingCenter;
//importamos a la base de datos
import controllers.FormativeProjectController;
import javax.servlet.RequestDispatcher;
import model.State;
//dispachery

/**
 *
 * @author rober
 */
@WebServlet(name = "ServletFormativeProject", urlPatterns = {"/ServletFormativeProject"})
public class ServletFormativeProject extends HttpServlet {

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
            //variables de respuesta
            String respuesta = "";
            //El requestDispacher sitve para despachar las solicitudes que llegan al servlet
            RequestDispatcher rd = null;
            //El requestDispacher sitve para despachar las solicitudes que llegan al servlet

            //Insertar dise�ocurricular.
            try {

                if (request.getParameter("btSiguientePF") != null) {
                    //instancia clase proyecto formativo
                    FormativeProject proyFr = new FormativeProject();
                    //instacias para llaves foraneas
                    TrainingCenter tC = new TrainingCenter();
                    CurricularDesign dC = new CurricularDesign();
                    State s = new State();

                    //instancia db de proyeto formativo
                    FormativeProjectController DBproyF = new FormativeProjectController();

                    //INSERCION DE LOS CAMPOS
                    proyFr.setCode(Long.parseLong(request.getParameter("txtCode")));

                    //´SIGUIENTES CAMPOS 
                    proyFr.setVersion(Long.parseLong(request.getParameter("txtVersion")));
                    proyFr.setAssociatedCode(Long.parseLong(request.getParameter("txtAssociatedCode")));
                    proyFr.setProjectName(request.getParameter("txtNameProject"));
                    proyFr.setTime(Long.parseLong(request.getParameter("txtTime")));
                    proyFr.setCompany(request.getParameter("txtCompany"));
                    proyFr.setKeyWords(request.getParameter("txtKeyWords"));
                    proyFr.setProblematica(request.getParameter("txtProblem"));
                    proyFr.setJustification(request.getParameter("txtJustification"));
                    proyFr.setObjetives(request.getParameter("txtObjectiveGeneral"));
                    proyFr.setSpecificObjetives(request.getParameter("txtSpecificObjetives"));
                    proyFr.setBeneficiaries(request.getParameter("txtBenifeciaries"));
                    proyFr.setImpact(request.getParameter("txtImpact"));
                    proyFr.setRestriction(request.getParameter("txtRestriction"));
                    proyFr.setResult(request.getParameter("txtResults"));
                    proyFr.setInnovation(request.getParameter("txtInnovation"));
                    proyFr.setProductiveValuation(request.getParameter("txtProductiveValues"));
                    proyFr.setNumberOfInstructors(Integer.parseInt(request.getParameter("txtNumberOfInstructors")));
                    proyFr.setNumberOfAprentices(Integer.parseInt(request.getParameter("txtNumberOfAprenticesR")));
                    proyFr.setDescriptionOfTheEnvironmen(request.getParameter("txtDescriptionOfTheEnvironment"));
                    
                    //LLAVES FORANEAS
                    //para la fk de diseño curricular
                    dC.setCode(Long.parseLong(request.getParameter("txtDisenoC")));
                    proyFr.setCurricularDesign_code(dC);
                    //centro de formacion
                    tC.setCode(Integer.parseInt(request.getParameter("txtCenterFormation")));
                    proyFr.setTrainingCenter_code(tC);
                    //estado
                    s.setCode(2);
                    proyFr.setStateCode(s);
                    //FIN FK
                    //fin
                    //validaciones
                    if (DBproyF.registerPF(proyFr) != false) {
                        proyFr = null;
                        DBproyF = null;

                        
                        //long code = Long.parseLong(request.getParameter("txtCode"));
              
                       response.sendRedirect("forms/Home.jsp?confirmP2=pf2");
                        
                       //request.setAttribute("txtCodeProject", code);          
                       //request.getRequestDispatcher("forms/proyectoF1.jsp").forward(request, response);
                        
                        
                        
                        System.out.println("error si prof");
                    } else {
                        out.println("error primera parte proyecto formativo");
                        response.sendRedirect("forms/proyectoF.jsp");
                        System.out.println("error NO prof");
                    }

                }
                //metodo para hacer  la consulta solo con el codigo de la llave primaria del proyecto formativo
                //**********************************************
                //METODO PARA EDITAR PROYECTO FORMATIVO
                //*************************************************

                if (request.getParameter("editFormativeProject") != null) {
                    long codeFP = Long.parseLong(request.getParameter("txtCodeTD"));
                    //instancia clase proyecto formativo
                    request.setAttribute("txtCode", codeFP);

                }

                if (request.getParameter("btEditPF") != null) {

                    //instancia clase proyecto formativo
                    FormativeProject proyFr = new FormativeProject();
                    /* //instacias para llaves foraneas
                    TrainingCenter tC = new TrainingCenter();
                    CurricularDesign dC = new CurricularDesign();*/

                    //instancia db de proyeto formativo
                    FormativeProjectController DBproyF = new FormativeProjectController();

                    //INSERCION DE LOS CAMPOS
                    proyFr.setCode(Long.parseLong(request.getParameter("txtCode")));

                    //´SIGUIENTES CAMPOS 
                    proyFr.setVersion(Long.parseLong(request.getParameter("txtVersion")));
                    proyFr.setAssociatedCode(Long.parseLong(request.getParameter("txtAssociatedCode")));
                    proyFr.setProjectName(request.getParameter("txtNameProject"));
                    proyFr.setTime(Long.parseLong(request.getParameter("txtTime")));
                    proyFr.setCompany(request.getParameter("txtCompany"));
                    proyFr.setKeyWords(request.getParameter("txtKeyWords"));
                    proyFr.setProblematica(request.getParameter("txtProblem"));
                    proyFr.setJustification(request.getParameter("txtJustification"));
                    proyFr.setObjetives(request.getParameter("txtObjectiveGeneral"));
                    proyFr.setSpecificObjetives(request.getParameter("txtSpecificObjetives"));
                    proyFr.setBeneficiaries(request.getParameter("txtBenifeciaries"));
                    proyFr.setImpact(request.getParameter("txtImpact"));
                    proyFr.setRestriction(request.getParameter("txtRestriction"));
                    proyFr.setResult(request.getParameter("txtResults"));
                    proyFr.setInnovation(request.getParameter("txtInnovation"));
                    proyFr.setProductiveValuation(request.getParameter("txtProductiveValues"));
                    proyFr.setNumberOfInstructors(Integer.parseInt(request.getParameter("txtNumberOfInstructors")));
                    proyFr.setNumberOfAprentices(Integer.parseInt(request.getParameter("txtNumberOfAprenticesR")));
                    proyFr.setDescriptionOfTheEnvironmen(request.getParameter("txtDescriptionOfTheEnvironment"));

                    /* //LLAVES FORANEAS
                    //para la fk de diseño curricular
                    dC.setCode(Long.parseLong(request.getParameter("txtDisenoC")));
                    proyFr.setCurricularDesign_code(dC);
                    //centro de formacion
                    tC.setCode(Integer.parseInt(request.getParameter("txtCenterFormation")));
                    proyFr.setTrainingCenter_code(tC);*/
                    //FIN FK
                    //fin
                    //validaciones
                    if (DBproyF.editarProyF(proyFr) != false) {
                        proyFr = null;
                        DBproyF = null;
                        response.sendRedirect("forms/ListFormativeP.jsp");

                        System.out.println("error si prof editar");
                    } else {
                        out.println("error primera parte proyecto formativo editar");
                        response.sendRedirect("forms/proyectoFedit.jsp");
                        System.out.println("error NO prof editar");
                    }

                }

            } catch (Exception e) {
                System.out.println("Error en proyecto formativo  edit " + e);
            }
            //ya para dar la respuesta

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
