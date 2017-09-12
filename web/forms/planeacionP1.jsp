<%-- 
   Document   : proyectoF
   Created on : 12-jul-2017, 0:46:10
   Author     : rober
--%>
<%@page import="models.ProjectActivities"%>
<%@page import="models.ProjectPhases"%>
<%@page import="models.FormativeProject"%>
<%@page import="models.LearningOutcomes"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="../css/formativeProjectCC.css">	
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/font-awesome.min.css">
        <link rel="stylesheet" href="../css/pasosLineTime.css">
        <link rel="stylesheet" type="text/css" href="../css/sweetalert.css">
        <script type="text/javascript" src="../js/sweetalert.min.js"></script>
        <title>Proyecto Formativo</title>
        <script type="text/javascript" src="js/JScargar.js"></script>

    </head>
    <body>
        <div class="formularios sectionP22">
            <input class="form-control" id="varRegPasos2F" type="hidden" value="<%= request.getParameter("confirmP2")%>">
            <div class="tituloFirst">
                <h1 class="titulo1">Planeación pedagógica <small>paso 2</small></h1>
            </div>
            <div class="container form1">
                <div class="row ">
                    <section class="formP2">
                        <div class="wizard">
                            <div class="wizard-inner">
                                <div class="connecting-line lineab"></div>
                                <ul class="nav nav-tabs" role="tablist">

                                    <li id="paso1" role="presentation" class="active">
                                        <a href="#" data-toggle="tab" aria-controls="step1" role="tab" title="Actividades de Aprendizaje">
                                            <span class="round-tab">
                                                <i class="glyphicon glyphicon-folder-open"></i>
                                            </span>
                                        </a>
                                    </li>

                                    <li id="paso2" role="presentation" class="">
                                        <a href="#" data-toggle="tab" aria-controls="step2" role="tab" title="Descripcion de evidencia de Aprendizaje">
                                            <span class="round-tab">
                                                <i class="glyphicon glyphicon-pencil"></i>
                                            </span>
                                        </a>
                                    </li>
                                    <li  id="paso3" role="presentation" class="">
                                        <a href="#" data-toggle="tab" aria-controls="complete" role="tab" title="Fin Planeación Pedagogica">
                                            <span class="round-tab">
                                                <i class="glyphicon glyphicon-picture"></i>
                                            </span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <section class="formP2">
                                <div class="tab-content">
                                    <div class="tab-pane active" role="tabpanel" id="step1">
                                        <div class="titulo2">
                                            <h6>Actividad de Aprendizaje</h6>
                                        </div>
                                        <ul class="list-inline pull-right">

                                            <div id="fk_formativePro">
                                                <%!
                                                    Iterator it2 = null;
                                                    ProjectPhases proyF2;
                                                    FormativeProject fff;
                                                %>
                                                <%
                                                    if (request.getParameter("code") != null) {
                                                %>
                                                <jsp:useBean id="obj2" class="controllers.ProjectPhasesController" scope="page">

                                                </jsp:useBean>
                                                <%                            try {

                                                        fff = new FormativeProject();
                                                        proyF2 = new ProjectPhases();
                                                        fff.setCode(Long.parseLong(request.getParameter("code")));
                                                        proyF2.setFormativeProject(fff);
                                                        obj2.filterPhase(proyF2);

                                                        it2 = obj2.getFasesProjectList().iterator();
                                                %>
                                                <select  id="txtProyectoF"  name="txtCodeF" class="form-control">
                                                    <option value="" >Seleccionar Fase de Proyecto</option>
                                                    <%
                                                        while (it2.hasNext()) {
                                                            proyF2 = (ProjectPhases) it2.next();
                                                    %>

                                                    <option value="<%= proyF2.getCode()%>"><%= proyF2.getName()%></a></option>

                                                    <%

                                                        }
                                                    %>
                                                </select> 
                                                <%
                                                    } catch (Exception e) {
                                                        System.out.println("error" + e);

                                                    }


                                                %>
                                                <input type="submit" name="btCo"  value="consultar">
                                                <%                            }
                                                %>

                                            </div> 
                                            <div id="fk_formativePro">
                                                <%!
                                                    Iterator it4 = null;
                                                    ProjectPhases proyF3;
                                                    ProjectActivities pA;
                                                %>
                                                <%
                                                    if (request.getParameter("btCo") != null) {
                                                %>
                                                <jsp:useBean id="obj4" class="controllers.ProjectActivitiesController" scope="page">

                                                </jsp:useBean>
                                                <%                            try {

                                                        proyF3 = new ProjectPhases();
                                                        pA = new ProjectActivities();
                                                        proyF3.setCode(Long.parseLong(request.getParameter("txtCodeF")));
                                                        pA.setProjectPhases_code(proyF3);
                                                        obj4.filerPA(pA);

                                                        it4 = obj4.getProjectActivitiesList().iterator();
                                                %>
                                                <select  id="txtProyectoF"  name="txtCodeF2" class="form-control">
                                                    <option value="" >Seleccionar Actividades de Proyecto</option>
                                                    <%
                                                        while (it4.hasNext()) {
                                                            pA = (ProjectActivities) it4.next();
                                                    %>

                                                    <option value="<%= pA.getCode()%>"><%= pA.getName()%></a></option>

                                                    <%

                                                        }
                                                    %>
                                                </select> 
                                                <%
                                                    } catch (Exception e) {
                                                        System.out.println("error" + e);

                                                    }


                                                %>
                                                <input type="submit" name="btCo2"  value="consultar">
                                                <%                            }
                                                %>

                                            </div> 

                                            <%!
                                                Iterator it3 = null;
                                                ProjectActivities a;
                                                                                                                                                                                                                                                                                                        %>

                                            <%
                                                if (request.getParameterValues("btCo2") != null) {
                                            %>
                                            <jsp:useBean id="obj3" class="controllers.ProjectActivitiesController" scope="page">

                                            </jsp:useBean>

                                            <%
                                                try {

                                                    a = new ProjectActivities();
                                                    a.setCode(Long.parseLong(request.getParameter("txtCodeF2")));
                                                    obj3.filterRA(a);

                                                    it3 = obj3.getProjectActivitiesList().iterator();
                                            %>
                                            <select  id="txtcodeLO"  name="txtcodeLO" class="form-control">
                                                <option value="" >Seleccionar Resultados de Aprendizaje</option>
                                                <%
                                                    while (it3.hasNext()) {
                                                        a = (ProjectActivities) it3.next();
                                                %>
                                                <option value="<%= a.getRa().getCode()%>"><%= a.getRa().getName()%></a></option>
                                                    <%

                                                        }
                                                    %>
                                            </select> 
                                            <%
                                                    } catch (Exception e) {
                                                        System.out.println("error" + e);

                                                    }
                                                }
                                            %>
                                            <div class="columns">
                                                <div>
                                                    <p>Descripción actividad:</p>       
                                                    <div class="input-group">       
                                                        <span class="input-group-addon"><i class="fa fa-clone fa-lg"></i></span>
                                                        <input id="activityDescription"type="text" class="form-control" placeholder="Programación de Software" autofocus> <br/>
                                                    </div>
                                                </div>
                                            </div> 
                                            <div>
                                                <p>Duración en horas:</p>       
                                                <div class="input-group">       
                                                    <span class="input-group-addon"><i class="fa fa-clock-o fa-lg"></i></span>
                                                    <input id="hoursDuration" type="text" class="form-control" placeholder="Programación de Software" autofocus> <br/>
                                                </div>
                                            </div>
                                            <div>
                                                <p>Área:</p>        
                                                <div class="input-group">       
                                                    <span class="input-group-addon"><i class="fa fa-reorder fa-lg"></i></span>
                                                    <select id="area" id="" class="form-control" name="">
                                                        <option value="">Seleccionar</option>
                                                        <option value="Area de Desarrollo Cognitivo">Área de desarrollo cognitivo</option>
                                                        <option value="Area de Desarrollo Procedimental:">Área de desarrollo Procedimental</option>
                                                    </select> <br/></div>
                                            </div>
                                            <div>
                                                <p>Estrategia didáctica:</p>        
                                                <div class="input-group">       
                                                    <span class="input-group-addon"><i class="fa fa-paper-plane-o fa-lg"></i></span>
                                                    <input id="dicdacticStrategy"type="text" class="form-control" placeholder="Programación de Software" autofocus> <br/>
                                                </div>
                                            </div>

                                            <br>

                                            <li class="btp2 lif"><a href="#" class="hrefLi btn btn-primary">Continue</a></li>

                                        </ul>
                                    </div>

                                    <div class="tab-pane" role="tabpanel" id="step2">
                                        <div class="titulo2">
                                            <h6>Descripción de Evidencia de Aprendizaje</h6>
                                        </div>

                                        <ul class="list-inline pull-right">
                                            <div id="actvProjectForm">
                                                <hr class="linea2">


                                                <div>
                                                    <p>Tipo:</p>        
                                                    <div class="input-group">       
                                                        <span class="input-group-addon"><i class="fa fa-align-justify fa-lg"></i></span>
                                                        <select id="typeEvidence" id="" class="form-control" name="">
                                                            <option value="">Seleccionar</option>
                                                            <option value="Conocimiento">Conocimiento</option>
                                                            <option value="Desempeño">Desempeño</option>
                                                            <option value="Producto">Producto</option>
                                                        </select> <br/></div>

                                                </div>
                                                <div>
                                                    <p>Descripción:</p>     
                                                    <textarea id="descriptionEvidence" type="text" class="form-control" placeholder="Contenido de la Justificación ......"></textarea><br/>
                                                </div>
                                                <hr>
                                                <div>
                                                    <p>Criterios de evaluación</p>      
                                                    <textarea id="criterioEvaluation" type="text" class="form-control" placeholder="Contenido de la Justificación ......"></textarea><br/>
                                                </div>

                                                <hr class="linea2">

                                                </form>
                                                <form id="PlaneacionPart2" action="../ServletLearningActivity">
                                                    <div class="agregar">
                                                        <div class="input-group">    
                                                            <input id="btPlaneacionPart2" class="btn btn-danger" type="submit" name="btAgregarLearningActv" value=".. SEND .."> <br/>
                                                        </div>
                                                    </div>
                                                </form>
                                                <br>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <li class="btp1 lif"><a href="#" class="hrefLi btn btn-primary ">Atrás</a></li>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <li class="btp3 lif"><a href="#" class="hrefLi btn btn-primary  ">Continue</a></li>
                                                    </div>

                                                </div>
                                        </ul>
                                    </div>

                                    <div class="tab-pane" role="tabpanel" id="step3">

                                        <div class="titulo2">
                                            <h6>.. FIN PLANECIÓN PEDAGÓGICA .. </h6>
                                        </div>
                                        <hr>
                                        <p>Si desea puede registrar otro o Consultarlos.</p>
                                        <hr class="linea2">
                                        <div class="columns">
                                            <div>
                                                
                                                    <input id="listaPP" type="submit" class="btn mitad" formaction="ListPP.jsp" value="Finalizar">
                                          
                                            </div>
                                            <br>
                                        </div>
                                    </div>
                                </div>
                                <div class="clearfix"></div>

                            </section>
                        </div>
                    </section>
                </div>
            </div>

        </div>


        <input id="RTAPeticiones"  class="" type="hidden" value=""/>
        <script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                  //PARA CAPTURA EL NUEVO REGISTRO
        //captura de las secciones
        var sectionTotal = $('#sectionTotal');
        //Varriable de acortacion
        var none = 'ocultar';
        var block = 'mostrar';
        //boton de nuevo
        var ppLista = $('#listaPP');
        //boton de mostrar paso 1 dek diselo curricular
        ppLista.focusin(function () {
            var n = 0;
            for (n; n < 1; n++) {
                sectionTotal.addClass(none);
                sectionTotal.removeClass(block);
                //console.log(n);
                if (n == 0) {
                    sectionTotal.addClass(block);
                    sectionTotal.removeClass(none);
                }
            }
        });

        //paso  1 dek diseñño curricular
        $("#listaPP").focusin(function () {
            $("#sectionTotal").load("ListPP.jsp");
        });
        
        //FIN DEL PROCESO
                
                //mensaje confirmacion que la planeacion pedagogic del paso 1 fui insertada correctamente
                var v = $("#varRegPasos2F").val();
                if (v == "pp2") {
                    swal({
                        title: "PLANEACIÒN PEDAGÒGICA PASO 1!",
                        text: "Se Insertó! Correctamente",
                        imageUrl: "../images/thumbs-up.jpg"
                    });
                    $("#varRegPasos2F").val("");
                }
                //funcion de capturar el sumit del boton
                /***************************
                 * Actividades de aprendizaje
                 */
                $('#PlaneacionPart2').on('submit', function (e) {



                    //capturamos la variables del formaulario
                    var learningOutcomes = $('#txtcodeLO').val();
                    var activityDescription = $('#activityDescription').val();
                    var hoursDuration = $('#hoursDuration').val();
                    var area = $('#area').val();
                    var didacticStrategy = $('#dicdacticStrategy').val();

                    //evidencias de aprendizaje
                    var typeEvidence = $('#typeEvidence').val();
                    var descriptionEvidence = $('#descriptionEvidence').val();
                    var criterioEvaluation = $('#criterioEvaluation').val();
                    //boton
                    var btPlaneacionPart2 = $('#btPlaneacionPart2').val();

                    //falta la funcion del prevent de errores
                    //
                    e.preventDefault();
                    //HACEMOS EL Ajax
                    $.ajax({
                        type: 'POST',
                        url: '../ServletLearningActivity',
                        data: {txtCodeLearningOutcomes: learningOutcomes, txtActivityDescription: activityDescription, txtHoursDuration: hoursDuration, txtArea: area, txtDidacticStrategy: didacticStrategy, btPlaneacionPart2: btPlaneacionPart2,
                            txtTypeEvidence: typeEvidence, txtDescriptionEvidence: descriptionEvidence, txtCriterioEvaluation: criterioEvaluation},
                        success: function (result) {
                            alert('inserto Activides de Aprendizaje');
                        }
                    });

                });
            });
            //fin del Script 

            //iconos del FORMULARIO PARA CAMBIAR DE PASO
            var p1 = $('#paso1');
            var p2 = $('#paso2');
            var p3 = $('#paso3');


            //botones de clic

            var bp1 = $('.btp1');
            var bp2 = $('.btp2');
            var bp3 = $('.btp3');

            //variables de los botones imagenes

            //validacion de los formularios
            var form1 = $('#step1');
            var form2 = $('#step2');
            var form3 = $('#step3');


            //Varriable de acortacion
            // var none = 'ocultar';
            //var block = 'mostrar';     
            //validaciones
            //PASO 1 

            //FIN PASO 1
            bp1.focusin(function () {
                setTimeout('pasoo1()', 10);

            });
            p1.focusin(function () {
                setTimeout('pasoo1()', 10);

            });
            //PASO 2
            bp2.focusin(function () {
                setTimeout('pasoo2()', 10);

            });
            p2.focusin(function () {
                setTimeout('pasoo2()', 10);

            });
            //FIN PASO 2

            //PASO 3
            bp3.focusin(function () {
                setTimeout('pasoo3()', 10);

            });
            p3.focusin(function () {
                setTimeout('pasoo3()', 10);

            });

            //FIN PASO 3




            //*************************
            //FUNCION PASO 1
            function pasoo1() {
                var l = [form1, form2, form3];
                var n = 0;
                for (n; n < 3; n++) {
                    //l[n].attr("class", "disabled");
                    l[n].removeClass('tab-pane active');
                    l[n].addClass('tab-pane');
                    console.log(n);
                    if (n == 2) {

                        form1.addClass('tab-pane active');
                    }
                }


                var h = [p1, p2, p3];
                var s = 0;
                for (s; s < 3; s++) {
                    //h[s].attr("class", "disabled");

                    h[s].removeClass('active');

                    console.log(s);
                    if (s == 2) {

                        p1.addClass('active');
                    }
                }
            }

            //*********************
            //FUNCION PASO 2

            function pasoo2() {
                var l = [form1, form2, form3];
                var n = 0;
                for (n; n < 3; n++) {
                    //l[n].attr("class", "disabled");
                    l[n].removeClass('tab-pane active');
                    l[n].addClass('tab-pane');
                    console.log(n);
                    if (n == 2) {

                        form2.addClass('tab-pane active');
                    }
                }


                var h = [p1, p2, p3];
                var s = 0;
                for (s; s < 3; s++) {
                    //h[s].attr("class", "disabled");

                    h[s].removeClass('active');

                    console.log(s);
                    if (s == 2) {

                        p2.addClass('active');
                    }
                }
            }

            //*************************
            //FUNCION PASO 3
            function pasoo3() {
                var l = [form1, form2, form3];
                var n = 0;
                for (n; n < 3; n++) {
                    //l[n].attr("class", "disabled");
                    l[n].removeClass('tab-pane active');
                    l[n].addClass('tab-pane');
                    console.log(n);
                    if (n == 2) {

                        form3.addClass('tab-pane active');
                    }
                }


                var h = [p1, p2, p3];
                var s = 0;
                for (s; s < 3; s++) {
                    //h[s].attr("class", "disabled");

                    h[s].removeClass('active');

                    console.log(s);
                    if (s == 2) {

                        p3.addClass('active');
                    }
                }
            }

            //************************


        </script> 

        <script type="text/javascript" src="../js/bootstrap.min.js"></script>

        <script src="../js/menu.js"></script>
        <script src="../js/busqueda.js"></script>
        <%--                <script src="../js/ordenDC.js"></script>--%>




    </body>
</html>
