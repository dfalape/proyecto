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
import model.ProjectPhases;
import model.FormativeProject;
import model.ProjectActivities;
import model.EstimatedResources;
import model.LearningOutcomes;
import model.Competence;

//importamos a la base de datos
import controllers.ProjectPhasesController;
import controllers.ProjectActivitiesController;
import controllers.EstimatedResourcesController;
import controllers.LearningOutcomesController;

/**
 *
 * @author rober
 */
@WebServlet(name = "ServletProjectPhases", urlPatterns = {"/ServletProjectPhases"})
public class ServletProjectPhases extends HttpServlet {

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
            //variables de respuesta

            //El requestDispacher sitve para despachar las solicitudes que llegan al servlet
            //El requestDispacher sitve para despachar las solicitudes que llegan al servlet
            //Insertar dise�ocurricular.
            if (request.getParameter("btAgregarFasesP") != null) {
                //instancia de  las llaves foraneas
                FormativeProject proyF = new FormativeProject();
                //instacia de la clase de las fases de proyecto
                ProjectPhases fasesP = new ProjectPhases();

                //instancia db DATABASE de proyeto formativo
                ProjectPhasesController DBfasesP = new ProjectPhasesController();

                //INSERCION DE LOS CAMPOS
                fasesP.setCode(Long.parseLong(request.getParameter("txtCodeFase")));
                fasesP.setName(request.getParameter("txtNameFase"));

                //LLAVES FORANEAS
                //para la fk de proyecto formativo
                proyF.setCode(Long.parseLong(request.getParameter("txtProyectoF")));
                fasesP.setFormativeProject(proyF);

                //FIN FK
                //fin
                //validaciones
                if (DBfasesP.registerFasesP(fasesP) != false) {

                    //instacia de la clese es null
                    fasesP = null;
                    //instacia de las base de datos es null
                    DBfasesP = null;

                    //response.sendRedirect("forms/proyectoF1.jsp");
                    out.print("1");
                } else {
                    //response.sendRedirect("forms/proyectoF1.jsp");
                    out.print("2");
                }

            }
            if (request.getParameter("btAgregarActvP") != null) {
                //instancia de  las llaves foraneas
                ProjectPhases fasesP = new ProjectPhases();

                //instacia de la clase de las fases de proyecto
                ProjectActivities actvP = new ProjectActivities();

                //instancia db DATABASE de proyeto formativo
                ProjectActivitiesController DBactvP = new ProjectActivitiesController();

                //INSERCION DE LOS CAMPOS
                actvP.setCode(Long.parseLong(request.getParameter("txtCodeActvP")));
                actvP.setName(request.getParameter("txtNameActvP"));
                actvP.setDuration(Long.parseLong(request.getParameter("txtDurationActvP")));

                //LLAVES FORANEAS
                //para la fk de proyecto formativo
                fasesP.setCode(Long.parseLong(request.getParameter("txtFkPhasesProject")));
                actvP.setProjectPhases_code(fasesP);

                //FIN FK
                //fin
                //validaciones
                if (DBactvP.registerActvProject(actvP) != false) {

                    LearningOutcomes ra = new LearningOutcomes();
                    actvP.setCode(Long.parseLong(request.getParameter("txtCodeActvP")));
                    ra.setCode(Long.parseLong(request.getParameter("txtAsigRA")));
                    actvP.setRa(ra);
                    if (DBactvP.assignResultA(actvP) != false) {
                        //instacia de la clese es null
                        actvP = null;
                        //instacia de las base de datos es null
                        DBactvP = null;
                        //response.sendRedirect("forms/proyectoF1.jsp");
                        out.print("1");
                    } else {

                        //response.sendRedirect("forms/proyectoF1.jsp");
                        out.print("2");
                    }

                } else {

                    //response.sendRedirect("forms/proyectoF1.jsp");
                    out.println("2");
                }

            }

            //ASIGNACION DE ACTIVIDADES DE PROYECTO  Y RESULTADOS DE APRENDIZAJE
            if (request.getParameter("btAsignRAaACTV") != null) {
                //instacia de la clase de las fases de proyecto
                //instancia db DATABASE de proyeto formativo
                ProjectActivitiesController DBactvP = new ProjectActivitiesController();
                ProjectActivities actvP = new ProjectActivities();
                LearningOutcomes ra = new LearningOutcomes();
                actvP.setCode(Long.parseLong(request.getParameter("txtActvProject")));
                ra.setCode(Long.parseLong(request.getParameter("txtResultAprend")));
                actvP.setRa(ra);
                if (DBactvP.assignResultA(actvP) != false) {
                    //instacia de la clese es null
                    actvP = null;
                    //instacia de las base de datos es null
                    DBactvP = null;
                    //response.sendRedirect("forms/proyectoF1.jsp");
                    out.println("1");
                } else {
                    //response.sendRedirect("forms/proyectoF1.jsp");

                    out.println("2");

                }

            }

            //VALIDACION DE LOS RECURSOS ETIMADOS
            //****************************************************************
            //****************************************************************
            if (request.getParameter("btAgregarER") != null) {
                //instancia de  la clase de recursos estimados
                EstimatedResources er = new EstimatedResources();

                //instancia db DATABASE de proyeto formativo
                EstimatedResourcesController DBer = new EstimatedResourcesController();

                String opciones = request.getParameter("rtOpcionesRE");

                if (request.getParameter("rtEquipo1") != null) {
              
                        //registar equipos
                        
                        //INSERCION DE LOS CAMPOS
                        er.setCode(Long.parseLong(request.getParameter("txtCodeER")));
                        er.setEquipementDescription(request.getParameter("txtDescriptionER"));
                        er.setEquipementQuantity(Long.parseLong(request.getParameter("txtCantidadER")));
                        er.setEquipementPrice(Long.parseLong(request.getParameter("txtValorUnitER")));
                }
                else if(request.getParameter("rtTalentHuman1") != null) {
                        // registrar talento humano
                        //INSERCION DE LOS CAMPOS
                        er.setCode(Long.parseLong(request.getParameter("txtCodeER")));
                        er.setHumanTalentDescription(request.getParameter("txtDescriptionER"));
                        er.setHumanTalentetQuantity(Long.parseLong(request.getParameter("txtCantidadER")));
                        er.setHumanTalentetPrice(Long.parseLong(request.getParameter("txtValorUnitER")));
                }
                else if (request.getParameter("rtMaterialC1") != null){
                        //registrar material de formacion
                        //INSERCION DE LOS CAMPOS
                        er.setCode(Long.parseLong(request.getParameter("txtCodeER")));
                        er.setDescriptionMaterials(request.getParameter("txtDescriptionER"));
                        er.setMaterialQuatity(Long.parseLong(request.getParameter("txtCantidadER")));
                        er.setMaterialPrice(Long.parseLong(request.getParameter("txtValorUnitER")));
                }
                else{
                    out.println("2");
                }
                         
                    
               

                //FIN FK
                //fin
                //validaciones
                if (DBer.registerEstimatedR(er) != false) {
                    ProjectActivities actP = new ProjectActivities();
                    ProjectActivitiesController bdActP = new ProjectActivitiesController();
                    actP.setCode(Long.parseLong(request.getParameter("txtAsgActvP")));
                    er.setCode(Long.parseLong(request.getParameter("txtCodeER")));
                    actP.setEstimedR(er);
                    if (bdActP.assignEstRe(actP) != false) {
                        //instacia de la clese es null
                        er = null;
                        //instacia de las base de datos es null
                        DBer = null;
                        //response.sendRedirect("forms/proyectoF1.jsp");
                        out.println("1");
                    } else {
                        out.println("2");
                    }

                } else {
                    //response.sendRedirect("forms/proyectoF1.jsp");
                    out.println("2");
                }

            } //REGISTRO DE LOS RESULATDOS DE APRENDIZAJE
            //*****************************************************************
            //*****************************************************************
            else if (request.getParameter("btAgregarRA") != null) {
                //instancia de  la clase de resualtados de aprendizaje
                LearningOutcomes RA = new LearningOutcomes();

                //instacia de la competencia para la llaves foraneas FK
                Competence comp = new Competence();

                //instancia db DATABASE de proyeto formativo
                LearningOutcomesController DBra = new LearningOutcomesController();

                //INSERCION DE LOS CAMPOS
                RA.setCode(Long.parseLong(request.getParameter("txtCodeRA")));
                RA.setName(request.getParameter("txtNameRA"));

                //LLAVES FORANEAS
                //para la fk de proyecto formativo
                comp.setCode(Long.parseLong(request.getParameter("txtFkCompetences")));
                RA.setCom(comp);

                //FIN FK
                //fin
                //validaciones
                if (DBra.registerLearningOutcomes(RA) != false) {
                    //instacia de la clese es null
                    RA = null;
                    //instacia de las base de datos es null
                    DBra = null;
                    //response.sendRedirect("forms/proyectoF1.jsp");
                    out.println("1");
                } else {
                    //response.sendRedirect("forms/proyectoF.jsp");
                    out.println("2");
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
