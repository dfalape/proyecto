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
<!DOCTYPE html>
<html>
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
        <script type="text/javascript" src="../js/cargarPfEdit.js"></script>
        <script type="text/javascript" src="js/JScargar.js"></script>

    </head>
    <body>
<%
                            HttpSession sessionU = request.getSession();
                            String usu;
                            String name2;
                            String lastName2;
                            String number2;
                            String address2;
                            if (sessionU.getAttribute("session") != null) {
                                usu = sessionU.getAttribute("session").toString();
                                name2 = sessionU.getAttribute("session2").toString();
                                address2 = sessionU.getAttribute("session3").toString();
                                number2 = sessionU.getAttribute("session4").toString();
                                lastName2 = sessionU.getAttribute("session5").toString();

                        %>
        <header>
            <div class="menu_bar">
                <a href="#" class="bt-menu"><span class="fa fa-list fa lg"></span>Menu</a>
            </div>
            <nav>
                <ul>
                    <li><a href="Home.jsp"><span class="fa fa-home fa lg"></span>Inicio</a></li>
                    <div class="search_bar">
                        <span class="fa fa-bell-o fa lg"></span>  <%= name2 + " " + lastName2%> </a>
                    </div>
                </ul>

            </nav>
        </header><br><br><br>



        <a href="javascript:devolver()">fghjk</a>
        <section class="paso1">
            <div id="formularios">

                <div class="tituloFirst">
                    <h1 class="titulo1">Proyecto Formativo</h1>
                </div>
                <form name="FormEditPF" method="POST" action="../ServletFormativeProject" class="form1" id="">
                    <div class="titulo2">
                        <h6>1. Información básica del Proyecto</h6>
                    </div><br>


                    <div>
                        <p>Código del proyecto sofia:</p>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-code fa-lg"></i></span>
                            <input id=""type="number" value="<%= request.getParameter("send")%>" name="txtCode" class="form-control" placeholder="232320"><br/>	
                        </div>
                    </div>
                         
                    <%!
                        Iterator it = null;
                        FormativeProject proyF;
                    %>
                    <jsp:useBean id="obj" class="controllers.FormativeProjectController" scope="page">

                    </jsp:useBean>
                    <%
                        try {
                            proyF = new FormativeProject();
                            proyF.setCode(Long.parseLong(request.getParameter("send")));
                            obj.getProjectFortCODG(proyF);
                            
                            

                            it = obj.getFormativeProjectList().iterator();

                            if (it.hasNext()) {
                                proyF = (FormativeProject) it.next();


                    %>
     
                    <div class="columns">
                        <div>
                            <p>Versión programa:</p>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user-circle-o fa-lg"></i></span>
                                <input id=""type="number" value="<%= proyF.getVersion()%>" name="txtVersion" class="form-control" placeholder="200"> <br/>	
                            </div>
                        </div>
                        <div>
                            <p>Fichas asosiadas:</p>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user-circle-o fa-lg"></i></span>
                                <input id=""type="number" value="<%= proyF.getAssociatedCode()%>" name="txtAssociatedCode" class="form-control" placeholder="47"> <br/>	
                            </div>
                        </div>
                    </div>


                    <div>
                        <p>Nombre del proyecto:</p>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user-circle-o fa-lg"></i></span>
                            <input type="text" value="<%= proyF.getProjectName() %>" class="form-control" name="txtNameProject" placeholder="cnetro de gestión ..."> <br/>	
                        </div>
                    </div>

                    <div class="columns">
                        <div>
                            <p>Tiempo estimado de ejecución:</p>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user-circle-o fa-lg"></i></span>
                                <input id=""type="number" value="<%= proyF.getTime() %>" name="txtTime" class="form-control" placeholder="24"> <br/>	
                            </div>
                        </div>
                        <div>
                            <p>Empresas o instituciones participantes:</p>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user-circle-o fa-lg"></i></span>
                                <input id="" type="text" value="<%= proyF.getCompany() %>" class="form-control" name="txtCompany" placeholder="sena, colegios con convenio"> <br/>	
                            </div>
                        </div>
                    </div>

                    <div>
                        <p>Palabras claves:</p>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user-circle-o fa-lg"></i></span>
                            <input type="text" class="form-control" value="<%= proyF.getKeyWords() %>" name="txtKeyWords" placeholder="software sistema .."> <br/>	
                        </div>
                    </div>


                    <hr class="linea2">
                    <div class="titulo2">
                        <h6>Estructura del Proyecto</h6>
                    </div><br>

                    <div>
                        <p>Planeación del problema o necesidad que se desea solucionar:</p>                            
                        <textarea type="text" name="txtProblem" class="form-control" placeholder="el microempresario promedio ...."><%= proyF.getProblematica() %></textarea>
                    </div>
                    <div>
                        <p>Justificación del proyecto:</p>                            
                        <textarea type="text" name="txtJustification" class="form-control" placeholder="lo que busca este ...."><%= proyF.getJustification() %></textarea>
                    </div>
                    <div>
                        <p>Objetivo general:</p>                            
                        <textarea type="text" name="txtObjectiveGeneral"  class="form-control" placeholder="desarrollar un sist ...."><%= proyF.getObjetives() %></textarea>
                    </div>
                    <div>
                        <p>Objetivos especificos:</p>                            
                        <textarea type="text" name="txtSpecificObjetives"  class="form-control" placeholder="1. realizar el levant ...."><%= proyF.getSpecificObjetives() %></textarea>
                    </div>
                    <div class="titulo2">
                        <h6>Alcance</h6>
                    </div><br>
                    <div>
                        <p>Beneficiarios del proyecto:</p>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user-circle-o fa-lg"></i></span>
                            <input type="text" name="txtBenifeciaries" value="<%= proyF.getBeneficiaries() %>" class="form-control" placeholder="empresas del sector .."> <br/>	
                        </div>
                    </div><br>
                    <div class="titulo2">
                        <h6>Impacto</h6>
                    </div><br>

                    <div>
                        <p>Social, Económico, Ambiental, Tecnológico:</p>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user-circle-o fa-lg"></i></span>
                            <input id=""type="text" name="txtImpact" value="<%= proyF.getImpact() %>" class="form-control" placeholder="Mejoramiento en prestación .."> <br/>	
                        </div>
                    </div>


                    <hr class="linea2"> 

                    <div>
                        <p>Restricciones o riesgos asociados alternativos:</p>                            
                        <textarea type="text" name="txtRestriction" class="form-control" placeholder="que no disponga de conectividad...."><%= proyF.getRestriction() %></textarea>
                    </div> 
                    <div>
                        <p>Productos o resultados del proyecto:</p>                            
                        <textarea type="text" name="txtResults"  class="form-control" placeholder="1. dodumento con evidenc ...."><%= proyF.getResult() %></textarea>
                    </div><br>
                    <div class="titulo2">
                        <h6>Innovación/ Gestión Tecnológica</h6>
                    </div>    
                    <div>
                        <textarea type="text"name="txtInnovation" class="form-control" placeholder="1. dodumento con evidenc ...."><%= proyF.getInnovation() %></textarea>
                    </div><br>

                    <div class="titulo2">
                        <h6>Valoración productiva</h6>
                    </div>
                    <div>
                        <textarea type="text"name="txtProductiveValues" class="form-control" placeholder="1. dodumento con evidenc ...."><%= proyF.getProductiveValuation() %></textarea>
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
                                <input type="number" name="txtNumberOfInstructors" value="<%= proyF.getNumberOfInstructors() %>" id="" class="form-control" placeholder="5"> <br/>	
                            </div>
                        </div>
                        <div>
                            <p>Número de aprendices sugeridos para participar:</p>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-book fa-lg"></i></span>
                                <input type="number" name="txtNumberOfAprenticesR" value="<%= proyF.getNumberOfAprentices() %>" id="" class="form-control" placeholder="997"> <br/>	
                            </div>
                        </div>
                    </div>
                    <div>
                        <p>Descripción del ambiente de aprendizaje requerido:</p>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-book fa-lg"></i></span>
                            <input type="text" name="txtDescriptionOfTheEnvironment" value="<%= proyF.getDescriptionOfTheEnvironmen() %>" id="" class="form-control" placeholder="ambinete de desarroll..."> <br/>	
                        </div>
                    </div>  
                    
                    
                     <%
                        }
                    %>

                    <%
                        } catch (Exception e) {
                            System.out.print("Editar ptroyecto form" + e);
                        }

                    %>
                    

                    <hr class="linea2">
                    <p class="center-content">
                        <input type="submit" name="btEditPF" class="btn" id="bpaso2" value="Editar">     
                    </p>

                </form>
            </div>
        </section



        <footer class="footer">    
            <div class="container" >
                <div class="col-md-3">
                    <h2 class="title">Formularios</h2>
                    <ul>
                        <li><a href="">Diseño Curricular</a></li>
                        <li><a href="">Proyecto Formativo</a></li>
                        <li><a href="">Planeación pedagógica</a></li>
                        <li><a href="">Cronograma Gantt</a></li>
                        <li><a href="">Cuadro Resumen</a></li>  
                    </ul>

                </div>
                <div class="col-md-3">
                    <h2 class="title">Archivos</h2>
                    <ul>
                        <li class="liF"><a href="">Diseño Curricular</a></li>
                        <li class="liF"><a href="">Proyecto Formativo</a></li>
                        <li class="liF"><a href="">Planeación pedagógica</a></li>
                        <li class="liF"><a href="">Cronograma Gantt</a></li>
                        <li class="liF"><a href="">Cuadro Resumen</a></li>  
                    </ul>

                </div>
                <div class="col-md-3">
                    <p class="copy" > Proceso Académico Instructores &copy; 2017 </p>
                    <div class="botonF">
                        <button class="botonpapu" >Ver Mas</button>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="imagen">
                        <img class="img" src="../images/sena.png">
                    </div>
                </div>   
            </div>
            <footer>
                <%                             } else {
                out.println("<script> setInterval(s, 100); function s () {swal({title: 'Inicie Sesion',text: 'Inicie sesion para poder acceder.'}); setInterval(login, 3000);}</script>");
                out.println("<script>function login () {location.replace('Login_1.jsp')}</script>");

            }
        %>









                <script src="../js/jquery.js"></script>
                <script src="../js/menu.js"></script>
                <script src="../js/busqueda.js"></script>
                <%--                <script src="../js/ordenDC.js"></script>--%>
                </body>
                </html>
