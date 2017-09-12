<%-- 
    Document   : proyectoF
    Created on : 12-jul-2017, 0:46:10
    Author     : rober
--%>
<%@page import="models.FormativeProject"%>
<%@page import="models.CurricularDesign"%>
<%@page import="models.TrainingCenter"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="../css/nav.css">	
        <link rel="stylesheet" href="../css/styles.css">	
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="../css/sweetalert.css">

        <script type="text/javascript" src="../js/sweetalert.min.js"></script>
        <title>Proyecto Formativo</title>
        <script type="text/javascript" src="js/cargarPfEdit.js"></script>

    </head>
  
            <div id="formularios">

                <div class="tituloFirst">
                    <h1 class="titulo1">Proyecto Formativo</h1>
                </div>
                <form method="POST" action="../ServletFormativeProject" class="form" id="proyectoFormative">
                    <div class="titulo2">
                        <h6>1. Información básica del Proyecto</h6>
                    </div>


                    <div>
                        <p>Código del proyecto sofia:</p>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-code fa-lg"></i></span>
                            <input id="codgProyF" type="number" name="txtCode" class="form-control" placeholder="232320"><br/>	
                        </div>
                    </div>

                    <hr>
                    <hr><br>


                    <label>Elija Diseño curricular</label>
                    <div class="input-group">

                        <%!                            Iterator it = null;
                            CurricularDesign dC;
                        %>
                        <jsp:useBean id="obj" class="controllers.CurricularDesignController" scope="page">

                        </jsp:useBean>
                        <%                            try {
                                obj.consultCurricularD();

                                it = obj.getCurricularList().iterator();
                        %>
                        <select name="txtDisenoC" class="form-control">
                            <%
                                while (it.hasNext()) {
                                    dC = (CurricularDesign) it.next();
                            %>

                            <option value="<%= dC.getCode()%>"><%= dC.getCode()%></option>

                            <%

                                }
                            %>
                        </select> 
                        <%
                            } catch (Exception e) {
                                e.printStackTrace();
                            }

                        %>

                    </div>

                    <label>Elija Centro de formación</label>
                    <div class="input-group">

                        <%!
                            Iterator it2 = null;
                            TrainingCenter tCen;
                                                                                                            %>
                        <jsp:useBean id="obj1" class="controllers.TrainingCenterController" scope="page">

                        </jsp:useBean>
                        <%                            try {
                                obj1.consultCenter();

                                it2 = obj1.getCenterList().iterator();
                        %>
                        <select name="txtCenterFormation"  class="form-control">
                            <%
                                while (it2.hasNext()) {
                                    tCen = (TrainingCenter) it2.next();
                            %>

                            <option value="<%= tCen.getCode()%>"><%= tCen.getName()%></option>

                            <%

                                }
                            %>
                        </select> 
                        <%
                            } catch (Exception e) {
                                e.printStackTrace();
                            }

                        %>

                    </div>


                    <hr><hr> <br>



                    <div class="columns">
                        <div>
                            <p>Versión programa:</p>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user-circle-o fa-lg"></i></span>
                                <input id=""type="number" name="txtVersion" class="form-control" placeholder="200"> <br/>	
                            </div>
                        </div>
                        <div>
                            <p>Fichas asosiadas:</p>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user-circle-o fa-lg"></i></span>
                                <input id=""type="number" name="txtAssociatedCode" class="form-control" placeholder="47"> <br/>	
                            </div>
                        </div>
                    </div>


                    <div>
                        <p>Nombre del proyecto:</p>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user-circle-o fa-lg"></i></span>
                            <input type="text" class="form-control" name="txtNameProject" placeholder="cnetro de gestión ..."> <br/>	
                        </div>
                    </div>

                    <div class="columns">
                        <div>
                            <p>Tiempo estimado de ejecución:</p>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user-circle-o fa-lg"></i></span>
                                <input id=""type="number" name="txtTime" class="form-control" placeholder="24"> <br/>	
                            </div>
                        </div>
                        <div>
                            <p>Empresas o instituciones participantes:</p>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user-circle-o fa-lg"></i></span>
                                <input id="" type="text" class="form-control" name="txtCompany" placeholder="sena, colegios con convenio"> <br/>	
                            </div>
                        </div>
                    </div>

                    <div>
                        <p>Palabras claves:</p>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user-circle-o fa-lg"></i></span>
                            <input type="text" class="form-control" name="txtKeyWords" placeholder="software sistema .."> <br/>	
                        </div>
                    </div>


                    <hr class="linea2">
                    <div class="titulo2">
                        <h6>Estructura del Proyecto</h6>
                    </div><br>

                    <div>
                        <p>Planeación del problema o necesidad que se desea solucionar:</p>                            
                        <textarea type="text" name="txtProblem" class="form-control" placeholder="el microempresario promedio ...."></textarea>
                    </div>
                    <div>
                        <p>Justificación del proyecto:</p>                            
                        <textarea type="text" name="txtJustification" class="form-control" placeholder="lo que busca este ...."></textarea>
                    </div>
                    <div>
                        <p>Objetivo general:</p>                            
                        <textarea type="text" name="txtObjectiveGeneral" class="form-control" placeholder="desarrollar un sist ...."></textarea>
                    </div>
                    <div>
                        <p>Objetivos especificos:</p>                            
                        <textarea type="text" name="txtSpecificObjetives" class="form-control" placeholder="1. realizar el levant ...."></textarea>
                    </div>
                    <div class="titulo2">
                        <h6>Alcance</h6>
                    </div><br>
                    <div>
                        <p>Beneficiarios del proyecto:</p>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user-circle-o fa-lg"></i></span>
                            <input type="text" name="txtBenifeciaries" class="form-control" placeholder="empresas del sector .."> <br/>	
                        </div>
                    </div><br>
                    <div class="titulo2">
                        <h6>Impacto</h6>
                    </div><br>

                    <div>
                        <p>Social, Económico, Ambiental, Tecnológico:</p>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user-circle-o fa-lg"></i></span>
                            <input id=""type="text" name="txtImpact" class="form-control" placeholder="Mejoramiento en prestación .."> <br/>	
                        </div>
                    </div>


                    <hr class="linea2"> 

                    <div>
                        <p>Restricciones o riesgos asociados alternativos:</p>                            
                        <textarea type="text" name="txtRestriction" class="form-control" placeholder="que no disponga de conectividad...."></textarea>
                    </div> 
                    <div>
                        <p>Productos o resultados del proyecto:</p>                            
                        <textarea type="text" name="txtResults" class="form-control" placeholder="1. dodumento con evidenc ...."></textarea>
                    </div> <br>
                    <div class="titulo2">
                        <h6>Innovación/ Gestión Tecnológica</h6>
                    </div>
                    <div>
                        <textarea type="text"name="txtInnovation" class="form-control" placeholder="1. dodumento con evidenc ...."></textarea>
                    </div><br>

                    <div class="titulo2">
                        <h6>Valoración productiva</h6>
                    </div>
                    <div>
                        <textarea type="text"name="txtProductiveValues" class="form-control" placeholder="1. dodumento con evidenc ...."></textarea>
                    </div><br>
                    <hr class="linea2">
                    <div class="titulo2">
                        <h6>Organización del proyecto</h6>
                    </div><br> 

                    <div class="columns">
                        <div>
                            <p>Número de instructores requeridos:</p>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-clock-o fa-lg"></i></span>
                                <input type="number" name="txtNumberOfInstructors" id="" class="form-control" placeholder="5"> <br/>	
                            </div>
                        </div>
                        <div>
                            <p>Número de aprendices sugeridos para participar:</p>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-book fa-lg"></i></span>
                                <input type="number" name="txtNumberOfAprenticesR" id="" class="form-control" placeholder="997"> <br/>	
                            </div>
                        </div>
                    </div>
                    <div>
                        <p>Descripción del ambiente de aprendizaje requerido:</p>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-book fa-lg"></i></span>
                            <input type="text" name="txtDescriptionOfTheEnvironment" id="" class="form-control" placeholder="ambinete de desarroll..."> <br/>	
                        </div>
                    </div>  

                    <hr class="linea2">
                    <p class="center-content">
                        <input id="btSiguientePF" type="submit" name="btSiguientePF" class="btn"  value="Siguiente">     
                    </p>
                </form>
            </div>
      

                        
                <script src="../js/jquery.js"></script>
                <script src="../js/cargar"></script>
                <script src="../js/menu.js"></script>
                <script src="../js/busqueda.js"></script>

           
