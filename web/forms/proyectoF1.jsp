<%-- 
   Document   : proyectoF
   Created on : 12-jul-2017, 0:46:10
   Author     : rober
--%>
<%@page import="models.FormativeProject"%>
<%@page import="models.ProjectPhases"%>
<%@page import="models.LearningOutcomes"%>
<%@page import="models.Competence"%>
<%@page import="models.ProjectActivities"%>
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
                <h1 class="titulo1">Proyecto Formativo<small> Paso 2</small></h1>
            </div>
            <div class="container form1">
                <div class="row">
                    <section class="formP2">

                        <div class="wizard">
                            <div class="wizard-inner">
                                <div class="connecting-line lineab"></div>
                                <ul class="nav nav-tabs" role="tablist">

                                    <li id="paso1" role="presentation" class="active">
                                        <a href="#" data-toggle="tab" aria-controls="step1" role="tab" title="Fases de Proyecto">
                                            <span class="round-tab">
                                                <i class="glyphicon glyphicon-folder-open"></i>
                                            </span>
                                        </a>
                                    </li>

                                    <li id="paso2" role="presentation" class="">
                                        <a href="#" data-toggle="tab" aria-controls="step2" role="tab" title="Actividades de Proyecto">
                                            <span class="round-tab">
                                                <i class="glyphicon glyphicon-pencil"></i>
                                            </span>
                                        </a>
                                    </li>
                                    <li  id="paso3" role="presentation" class="">
                                        <a href="#" data-toggle="tab" aria-controls="step3" role="tab" title="Recursos Estimados">
                                            <span class="round-tab">
                                                <i class="glyphicon glyphicon-picture"></i>
                                            </span>
                                        </a>
                                    </li>

                                    <li  id="paso4" role="presentation" class="">
                                        <a href="#" data-toggle="tab" aria-controls="complete" role="tab" title="Fin Proceso">
                                            <span class="round-tab">
                                                <i class="glyphicon glyphicon-ok"></i>
                                            </span>
                                        </a>
                                    </li>
                                </ul>
                            </div>

                            <section class="formP2">
                                <div class="tab-content">
                                    <div class="tab-pane active " role="tabpanel" id="step1">
                                        <div class="titulo2">
                                            <h6>Planeación del Proyecto Fases del proyecto</h6>
                                        </div>
                                        <ul class="list-inline pull-right">

                                           
                                                <hr class="linea2">

                                                <%!
                                                    FormativeProject p = new FormativeProject();
                                                %>
                                                <%--
                                                                    <input id="codePROYFORM" type="text" value="<%= request.getAttribute("txtCodeProject")%>">   --%>
                                                <div class="columns">
                                                    <div>
                                                        <p>Codigo de Fase de Proyecto:</p>
                                                        <div class="input-group">
                                                            <span class="input-group-addon"><i class="fa fa-code fa-lg"></i></span>
                                                            <input id="txtCodeFase" type="number" name=""  class="form-control" placeholder="Diseño o formu ..."> <br/>	
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <p>Nombre de Fase de Proyecto:</p>
                                                        <div class="input-group">
                                                            <span class="input-group-addon"><i class="fa fa-archive fa-lg"></i></span>
                                                            <input id="txtNameFase" type="text" name=""  class="form-control" placeholder="desarrollo de la bas ..."> <br/>	
                                                        </div>
                                                    </div>
                                                </div>

                                                <label>Elija Proyecto Formativo</label>
                                                <div class="input-group">

                                                    <%!
                                                        Iterator it = null;
                                                        FormativeProject proyF;
                                                    %>
                                                    <jsp:useBean id="obj" class="controllers.FormativeProjectController" scope="page">

                                                    </jsp:useBean>
                                                    <%
                                                        try {
                                                            obj.consultProjectForm();

                                                            it = obj.getFormativeProjectList().iterator();
                                                    %>
                                                    <select id="txtProyectoF" name="" class="form-control">
                                                        <%
                                                            while (it.hasNext()) {
                                                                proyF = (FormativeProject) it.next();
                                                        %>

                                                        <option value="<%= proyF.getCode()%>"><%= proyF.getCode()%></option>

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


                                                <form id="formFasesProy" action="#">
                                                    <div class="agregar">
                                                        <div class="input-group">		
                                                            <span class="input-group-addon"><i id="agregarI" class="fa fa-plus fa-lg"></i></span>
                                                            <input id="btAgregarFasesP" class="field" type="submit" name="" value="Agregar"> <br/>
                                                        </div>
                                                    </div>
                                                </form>
                                         
                                            <li><input type="submit" class="btn btn-primary btn-info-full next-step" value="Save"></li>
                                            <li class="btp2 lif"><a href="#" class="hrefLi btn btn-primary">Continue</a></li>

                                        </ul>
                                    </div>
                                    <div class="tab-pane" role="tabpanel" id="step2">
                                        <div class="titulo2">
                                            <h6>Asignación Activiades P y RA</h6>
                                        </div>

                                        <ul class="list-inline pull-right">
                                            <div id="actvProjectForm">
                                                <hr class="linea2">

                                                <div class="columns">
                                                    <label>Elija la Actividad de proyecto Asociada</label>
                                                    <div id="fk_projectActivities" class="input-group">

                                                        <%!
                                                            Iterator it12 = null;
                                                            ProjectActivities actPP;
                                                        %>
                                                        <jsp:useBean id="obj12" class="controllers.ProjectActivitiesController" scope="page">

                                                        </jsp:useBean>
                                                        <%                            try {
                                                                obj12.consultActvProject();

                                                                it12 = obj12.getProjectActivitiesList().iterator();
                                                        %>
                                                        <select id="txtCodeActvP1" name="txtCodeActvP1" class="form-control">
                                                            <option value="1">-- Seleccione Actividad de Proyecto --</option>
                                                            <%
                                                                while (it12.hasNext()) {
                                                                    actPP = (ProjectActivities) it12.next();
                                                            %>

                                                            <option value="<%= actPP.getCode()%>"><%= actPP.getCode()%></option>

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

                                                    <label>Elija el resultado de aprendizeje asociado</label>
                                                    <div class="input-group">

                                                        <%!
                                                            Iterator it13 = null;
                                                            LearningOutcomes ra2;
                                                        %>
                                                        <jsp:useBean id="obj13" class="controllers.LearningOutcomesController" scope="page">

                                                        </jsp:useBean>
                                                        <%                            try {
                                                                obj13.consultRA();

                                                                it13 = obj13.getLearningOutcomesList().iterator();
                                                        %>
                                                        <select id="txtAsigRA2" name="txtAsigRA2" class="form-control">
                                                            <%
                                                                while (it13.hasNext()) {
                                                                    ra2 = (LearningOutcomes) it13.next();
                                                            %>

                                                            <option value="<%= ra2.getCode()%>"><%= ra2.getCode()%></option>

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
                                                </div>
                                                <form id="formActvProyAsig" action="#">
                                                    <div class="agregar">
                                                        <div class="input-group">	
                                                            <span class="input-group-addon"><i id="agregarI" class="fa fa-plus fa-lg"></i></span>
                                                            <input id="btAsignarRA2" class="field" type="submit" name="btAsignarRA2" value="Asignar"> <br/>
                                                        </div>
                                                    </div>
                                                </form>
                                                <hr>
                                                <div class="titulo2">
                                                    <h6>Actividades de Proyecto</h6>
                                                </div>
                                                <hr class="linea2">
                                                <div class="columns">
                                                    <div>
                                                        <p>Codigo de actividad de proyecto:</p>
                                                        <div class="input-group">
                                                            <span class="input-group-addon"><i class="fa fa-code fa-lg"></i></span>
                                                            <input id="txtCodeActvP"  type="number" name="txtCodeActvP"  class="form-control" placeholder="Diseño o formu ..."> <br/>	
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <p>Nombre de actividad de proyecto:</p>
                                                        <div class="input-group">
                                                            <span class="input-group-addon"><i class="fa fa-archive fa-lg"></i></span>
                                                            <input id="txtNameActvP" type="text" name="txtNameActvP" class="form-control" placeholder="desarrollo de la bas ..."> <br/>	
                                                        </div>
                                                    </div>
                                                </div>

                                                <div>
                                                    <p>Dureción de Actividad de Proyecto:</p>
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="fa fa-archive fa-lg"></i></span>
                                                        <input id="txtDurationActvP" type="number" name="txtDurationActvP"  class="form-control" placeholder="desarrollo de la bas ..."> <br/>	
                                                    </div>
                                                </div>

                                                <label>Elija fase del proyecto</label>
                                                <div id="fk_faseProject" class="input-group">

                                                    <%!
                                                        Iterator it2 = null;
                                                        ProjectPhases fasesP;
                                                    %>
                                                    <jsp:useBean id="obj2" class="controllers.ProjectPhasesController" scope="page">

                                                    </jsp:useBean>
                                                    <%                            try {
                                                            obj2.consultPhasesProject();

                                                            it2 = obj2.getFasesProjectList().iterator();
                                                    %>
                                                    <select id="txtFkPhasesProject" name="txtFkPhasesProject" class="form-control">
                                                        <%
                                                            while (it2.hasNext()) {
                                                                fasesP = (ProjectPhases) it2.next();
                                                        %>

                                                        <option value="<%= fasesP.getCode()%>"><%= fasesP.getCode()%></option>

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


                                                <label>Elija el resultado de aprendizeje asociado</label>
                                                <div class="input-group">

                                                    <%!
                                                        Iterator it7 = null;
                                                        LearningOutcomes ra;
                                                    %>
                                                    <jsp:useBean id="obj7" class="controllers.LearningOutcomesController" scope="page">

                                                    </jsp:useBean>
                                                    <%                            try {
                                                            obj7.consultRA();

                                                            it7 = obj7.getLearningOutcomesList().iterator();
                                                    %>
                                                    <select id="txtAsigRA" name="txtAsigRA" class="form-control">
                                                        <%
                                                            while (it7.hasNext()) {
                                                                ra = (LearningOutcomes) it7.next();
                                                        %>

                                                        <option value="<%= ra.getCode()%>"><%= ra.getCode()%></option>

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


                                                <form id="formActvProy" action="#">
                                                    <div class="agregar">
                                                        <div class="input-group">	
                                                            <span class="input-group-addon"><i id="agregarI" class="fa fa-plus fa-lg"></i></span>
                                                            <input id="btAgregarActvP" class="field" type="submit" name="btAgregarActvP" value="Agregar"> <br/>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                            <li><input type="submit" class="btn btn-primary btn-info-full next-step" value="Save"></li>
                                            <li class="btp3 lif"><a href="#" class="hrefLi btn btn-primary">Continue</a></li>
                                            <li class="btp1 lif"><a href="#" class="hrefLi btn btn-primary">Atrás</a></li>

                                        </ul>
                                    </div>
                                    <div class="tab-pane" role="tabpanel" id="step3">
                                        <div class="titulo2">
                                            <h6>RECURSOS ESTIMADOS</h6>
                                        </div> 
                                        <ul class="list-inline pull-right">

                                            <hr class="linea2">
                                            <div>
                                                <p>Codigo de recurso estimado:</p>
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-archive fa-lg"></i></span>
                                                    <input id="txtCodeER" type="number" name="txtCodeER"  class="form-control" placeholder="6"> <br/>	
                                                </div>
                                            </div>

                                            <div class="row rtOp">
                                                <div class="col-md-4">   
                                                    <p>Equipos y herramientas</p>
                                                    <input id="rtTipoRecursoEQ" type="checkbox" value="" name="rtTipoRecurso1">              
                                                </div>
                                                <div class="col-md-4">   
                                                    <p>Talento Humano Instructores</p>
                                                    <input id="rtTipoRecursoTH" type="checkbox" value="" name="rtTipoRecurso2">              
                                                </div>
                                                <div class="col-md-4">   
                                                    <p>Materiales de formación consumibles</p>
                                                    <input id="rtTipoRecursoMC" type="checkbox" value="" name="rtTipoRecurso3">              
                                                </div>

                                            </div>
                                            <br>
                                            <div class="columns">
                                                <div>
                                                    <p>Descripción/Especialidad:</p>
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="fa fa-code fa-lg"></i></span>
                                                        <input id="txtDescriptionER" type="text" name="txtDescriptionER"  class="form-control" placeholder="descripción..."> <br/>	
                                                    </div>
                                                </div>
                                                <div>
                                                    <p>Cantidad:</p>
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="fa fa-archive fa-lg"></i></span>
                                                        <input id="txtCantidadER" type="number" name="txtCantidadER" class="form-control" placeholder="6"> <br/>	
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="columns">
                                                <div>
                                                    <p>Valor Unitario:</p>
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="fa fa-code fa-lg"></i></span>
                                                        <input id="txtValorUnitER" type="number" name="txtValorUnitER"  class="form-control" placeholder="$5000"> <br/>	
                                                    </div>
                                                </div>
                                            </div>

                                            <label>Elija la Actividad de proyecto Asociada</label>
                                            <div id="fk_projectActivities" class="input-group">

                                                <%!
                                                    Iterator it3 = null;
                                                    ProjectActivities actP;
                                                                                                                                                                                                        %>
                                                <jsp:useBean id="obj3" class="controllers.ProjectActivitiesController" scope="page">

                                                </jsp:useBean>
                                                <%                            try {
                                                        obj3.consultActvProject();

                                                        it3 = obj3.getProjectActivitiesList().iterator();
                                                %>
                                                <select id="txtAsgActvP" name="txtAsgActvP" class="form-control">
                                                    <%
                                                        while (it3.hasNext()) {
                                                            actP = (ProjectActivities) it3.next();
                                                    %>

                                                    <option value="<%= actP.getCode()%>"><%= actP.getCode()%></option>

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

                                            <form id="formEstimatedResources" action="#">
                                                <div class="agregar">
                                                    <div class="input-group">		
                                                        <span class="input-group-addon"><i id="agregarI" class="fa fa-plus fa-lg"></i></span>
                                                        <input id="btAgregarER" class="field" type="submit" name="btAgregarER" value="Agregar"> <br/>
                                                    </div>
                                                </div>
                                            </form>

                                            <li><button type="button" class="btn btn-primary btn-info-full next-step">Save</button></li>
                                            <li class="btp4 lif"><a href="#" class="hrefLi btn btn-primary">Continue</a></li>
                                            <li class="btp2 lif"><a href="#" class="hrefLi btn btn-primary">Atrás</a></li>
                                        </ul>
                                    </div>
                                    <div class="tab-pane" role="tabpanel" id="step4">
                                        <div class="titulo2">
                                            <h6>.. FIN PROYECTO FORMATIVO .. </h6>
                                        </div>
                                        <hr>
                                        <p>Si desea puede registar otro o Consultarlos.</p>
                                        <hr class="linea2">
                                        <div class="columns">
                                            <div>
                                               
                                                    <input id="listaPF" type="submit" class="btn mitad" formaction="ListFormativeP.jsp" value="Finalizar">
                                            

                                            </div>

                                            <br>
                                        </div>
                                    </div>

                                    <div class="clearfix"></div>
                                </div>
                            </section>
                        </div>
                    </section>
                </div>
            </div>

            <input id="RTAPeticiones"  class="" type="hidden" value=""/>

            <script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
            <script type="text/javascript">
                //funciones de ajax para Paso 2 de  proyecto formativ

                $(document).ready(function () {
                       //PARA CAPTURA EL NUEVO REGISTRO
        //captura de las secciones
        var sectionTotal = $('#sectionTotal');
        //Varriable de acortacion
        var none = 'ocultar';
        var block = 'mostrar';
        //boton de nuevo
        var fpLista = $('#listaPF');
        //boton de mostrar paso 1 dek diselo curricular
        fpLista.focusin(function () {
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
        $("#listaPF").focusin(function () {
            $("#sectionTotal").load("ListFormativeP.jsp");
        });
        
        //FIN DEL PROCESO
                    //mensaje de inserto el proyecto formativo paso 1
                    var v = $("#varRegPasos2F").val();
                    if (v == "pf2") {
                        swal({
                            title: "PROYECTO FORMATIVO PASO 1!",
                            text: "Se Insertó! Correctamente",
                            imageUrl: "../images/thumbs-up.jpg"
                        });
                        $("#varRegPasos2F").val("");
                    }

                    //DESDE AQUI COMIENZAN LOS PROCESOS PARA EL AJAX
                    //Cuando se captura el boton del  formulario de Fases de Proyecto, actividades de proyecto y recursos estimados
                    $('#formFasesProy').on('submit', function (e) {
                        //botones del paso 2 de proyecto formativo
                        //bt fases de proyecto
                        var btFasesProyec = $('#btAgregarFasesP').val();

                        //************************ CAMPOS DE LAS TABLAS 
                        //******** FASES DE PROYECTO **************
                        var codgFase = $('#txtCodeFase').val();
                        var nombreFase = $('#txtNameFase').val();
                        var fk_ProyectoForm = $('#txtProyectoF').val();
                        //******** FIN FASES DE PROYECTO **********

                        e.preventDefault(); //para captura el evento del boton por defecto, no es necesaro
                        //METODO AJAX            
                        $.ajax({
                            //data enviamos l
                            //variables basicas
                            type: 'POST',
                            url: '../ServletProjectPhases',
                            //data enviamos los parametros
                            data: {btAgregarFasesP: btFasesProyec, txtCodeFase: codgFase, txtNameFase: nombreFase, txtProyectoF: fk_ProyectoForm},
                            //con success recibimos la respuesta
                            success: function (result) {//creamos una funcion para recibir el resultado en una variable result


                                //capturamoes la respuesta que llega en un input de tipo hidden
                                $('#RTAPeticiones').val(result);
                                //AHORA VOLVEMOS A CAPTURAR ESA RESPUESTA PARA HACER LAS VALIDACIONES
                                var mensaje = $('#RTAPeticiones').val();
                                //VALIDACION DE INSERTO

                                if (mensaje == "1") {

                                    swal({
                                        title: "Fase del Proyecto!",
                                        text: "Se insertò correctamente.",
                                        timer: 5000,
                                        showConfirmButton: false
                                    });
                                    setInterval(recargarFK, 2000);

                                    function recargarFK() {
                                        location.reload($("#fk_faseProject"));
                                    }

                                }
                                //VALIDACION DE NO INSERTO
                                else {
                                    alert("No Inserto");
                                }
                                //FIN DEL PROCESO DE VALIDACION DE INSERCION
                            }


                        });
                    });

                    //************************************************
                    //**********************************************+
                    //ACTIVIDSADES DE PROYECTO
                    //DESDE AQUI COMIENZAN LOS PROCESOS PARA EL AJAX
                    //Cuando se captura el boton del  formulario de Fases de Proyecto, actividades de proyecto y recursos estimados
                    $('#formActvProy').on('submit', function (e) {
                        //botones del paso 2 de proyecto formativo
                        //bt actividades de proyecto
                        var btActividadesProy = $('#btAgregarActvP').val();

                        //******** ACTIVIDADES DE PROYECTO **************
                        var codgActvProy = $('#txtCodeActvP').val();
                        var nombreActvProy = $('#txtNameActvP').val();
                        var duracionActvProy = $('#txtDurationActvP').val();
                        var fk_FaseProy = $('#txtFkPhasesProject').val();
                        var fk_ResultadoAprendi = $('#txtAsigRA').val();
                        //******** FIN ACTIVIDADES DE PROYECTO **********

                        e.preventDefault(); //para captura el evento del boton por defecto, no es necesaro
                        //METODO AJAX            
                        $.ajax({
                            //data enviamos l
                            //variables basicas
                            type: 'POST',
                            url: '../ServletProjectPhases',
                            //data enviamos los parametros
                            data: {btAgregarActvP: btActividadesProy, txtCodeActvP: codgActvProy, txtNameActvP: nombreActvProy, txtDurationActvP: duracionActvProy, txtFkPhasesProject: fk_FaseProy, txtAsigRA: fk_ResultadoAprendi},
                            //con success recibimos la respuesta
                            success: function (result) {//creamos una funcion para recibir el resultado en una variable result

                                //capturamoes la respuesta que llega en un input de tipo hidden
                                $('#RTAPeticiones').val(result);
                                //AHORA VOLVEMOS A CAPTURAR ESA RESPUESTA PARA HACER LAS VALIDACIONES
                                var mensaje = $('#RTAPeticiones').val();
                                //VALIDACION DE INSERTO

                                if (mensaje == "1") {

                                    swal({
                                        title: "Actividad de Proyecto!",
                                        text: "se inserto Correctamente",
                                        timer: 5000,
                                        showConfirmButton: false
                                    });
                                    setTimeout(recargarFK, 2000);

                                    function recargarFK() {
                                        location.reload($("#fk_projectActivities"));

                                    }


                                }
                                //VALIDACION DE NO INSERTO
                                else {
                                    alert("No Inserto");
                                }
                                //FIN DEL PROCESO DE VALIDACION DE INSERCION

                            }

                        });
                    });

                    //***************************
                    //*********************************
                    //ASIGNAR RASULTADO DE APRENDIZAJE A ACTIVIDAD DE PROYECTO
                    //*********************************
                    //*********************************
                    $('#formActvProyAsig').on('submit', function (e) {
                        //botones del paso 2 de proyecto formativo
                        //bt de asignar
                        var btAsignRAaACTV = $('#btAsignarRA2').val();

                        //************************ CAMPOS DE LAS TABLAS 
                        //******** ASIGNACION DE ACTV DE APRENDIZAJE **************
                        var actvProy = $('#txtCodeActvP1').val();
                        var ResultAprend = $('#txtAsigRA2').val();

                        //******** FIN FASES DE PROYECTO **********

                        e.preventDefault(); //para captura el evento del boton por defecto, no es necesaro
                        //METODO AJAX            
                        $.ajax({
                            //data enviamos l
                            //variables basicas
                            type: 'POST',
                            url: '../ServletProjectPhases',
                            //data enviamos los parametros
                            data: {btAsignRAaACTV: btAsignRAaACTV, txtActvProject: actvProy, txtResultAprend: ResultAprend},
                            //con success recibimos la respuesta
                            success: function (result) {//creamos una funcion para recibir el resultado en una variable result

                                //capturamoes la respuesta que llega en un input de tipo hidden
                                $('#RTAPeticiones').val(result);
                                //AHORA VOLVEMOS A CAPTURAR ESA RESPUESTA PARA HACER LAS VALIDACIONES
                                var mensaje = $('#RTAPeticiones').val();
                                //VALIDACION DE INSERTO

                                if (mensaje == "1") {

                                    swal({
                                        title: "Asignaciòn Actividad de Proyecto con Resultados de Aprendzaje!",
                                        text: "se asigno correctamente.",
                                        timer: 5000,
                                        showConfirmButton: false
                                    });
                                    setInterval(recargarFK, 2000);

                                    function recargarFK() {
                                        location.reload($("#txtCodeActvP1"));
                                        location.reload($("#fk_projectActivities"));

                                    }



                                }
                                //VALIDACION DE NO INSERTO
                                else {
                                    alert("No Inserto");
                                }
                                //FIN DEL PROCESO DE VALIDACION DE INSERCION

                            }

                        });
                    });
                    //************************************************
                    //**********************************************+
                    //ACTIVIDSADES DE PROYECTO
                    //DESDE AQUI COMIENZAN LOS PROCESOS PARA EL AJAX
                    //Cuando se captura el boton del  formulario de Fases de Proyecto, actividades de proyecto y recursos estimados
                    $('#formEstimatedResources').on('submit', function (e) {
                        //botones del paso 2 de proyecto formativo
                        //bt recursos estimados
                        var btEstimatedResources = $('#btAgregarER').val();

                        //******** RECURSOS ESTIMADOS **************
                        //validacion del radio button
                        var rtEquipo = $('#rtTipoRecursoEQ').val();
                        var rtTalentHuman = $('#rtTipoRecursoTH').val();
                        var rtMaterialC = $('#rtTipoRecursoMC').val();

                        //fin validacion del raio button
                        var codgEstimatedResource = $('#txtCodeER').val();
                        var descripcionEstimatedResource = $('#txtDescriptionER').val();
                        var cantidadEstimaResource = $('#txtCantidadER').val();
                        var valorUnitEstimatedResource = $('#txtValorUnitER').val();
                        var fk_ActvProyec = $('#txtAsgActvP').val();
                        //******** FIN RECURSOS ESTIMADOS **********

                        e.preventDefault(); //para captura el evento del boton por defecto, no es necesaro
                        //METODO AJAX            
                        $.ajax({
                            //data enviamos l
                            //variables basicas
                            type: 'POST',
                            url: '../ServletProjectPhases',
                            //data enviamos los parametros
                            data: {btAgregarER: btEstimatedResources, txtCodeER: codgEstimatedResource, txtDescriptionER: descripcionEstimatedResource, txtCantidadER: cantidadEstimaResource, txtValorUnitER: valorUnitEstimatedResource, txtAsgActvP: fk_ActvProyec, rtEquipo1: rtEquipo, rtTalentHuman1: rtTalentHuman, rtMaterialC1: rtMaterialC},
                            //con success recibimos la respuesta
                            success: function (result) {//creamos una funcion para recibir el resultado en una variable result
                                //capturamoes la respuesta que llega en un input de tipo hidden
                                $('#RTAPeticiones').val(result);
                                //AHORA VOLVEMOS A CAPTURAR ESA RESPUESTA PARA HACER LAS VALIDACIONES
                                var mensaje = $('#RTAPeticiones').val();
                                //VALIDACION DE INSERTO

                                if (mensaje == "1") {

                                    swal({
                                        title: "Recursos Estimados!",
                                        text: "Se Inserto Correctamente.",
                                        timer: 2000,
                                        showConfirmButton: false
                                    });

                                }
                                //VALIDACION DE NO INSERTO
                                else {
                                    alert("No Inserto");
                                }
                                //FIN DEL PROCESO DE VALIDACION DE INSERCION

                            }

                        });
                    });





                });
                //fin del Script 

    //iconos del FORMULARIO PARA CAMBIAR DE PASO
                var p1 = $('#paso1');
                var p2 = $('#paso2');
                var p3 = $('#paso3');
                var p4 = $('#paso4');

                //botones de clic

                var bp1 = $('.btp1');
                var bp2 = $('.btp2');
                var bp3 = $('.btp3');
                var bp4 = $('.btp4');
                //variables de los botones imagenes

                //validacion de los formularios
                var form1 = $('#step1');
                var form2 = $('#step2');
                var form3 = $('#step3');
                var form4 = $('#step4');

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

                //PASO 4
                bp4.focusin(function () {
                    setTimeout('pasoo4()', 10);

                });
                p4.focusin(function () {
                    setTimeout('pasoo4()', 10);

                });

                //FIN PASO 4


    //*************************
    //FUNCION PASO 1
                function pasoo1() {
                    var l = [form1, form2, form3, form4];
                    var n = 0;
                    for (n; n < 4; n++) {
                        //l[n].attr("class", "disabled");
                        l[n].removeClass('tab-pane active');
                        l[n].addClass('tab-pane');
                        console.log(n);
                        if (n == 3) {

                            form1.addClass('tab-pane active');
                        }
                    }


                    var h = [p1, p2, p3, p4];
                    var s = 0;
                    for (s; s < 4; s++) {
                        //h[s].attr("class", "disabled");

                        h[s].removeClass('active');

                        console.log(s);
                        if (s == 3) {

                            p1.addClass('active');
                        }
                    }
                }

    //*********************
    //FUNCION PASO 2

                function pasoo2() {
                    var l = [form1, form2, form3, form4];
                    var n = 0;
                    for (n; n < 4; n++) {
                        //l[n].attr("class", "disabled");
                        l[n].removeClass('tab-pane active');
                        l[n].addClass('tab-pane');
                        console.log(n);
                        if (n == 3) {

                            form2.addClass('tab-pane active');
                        }
                    }


                    var h = [p1, p2, p3, p4];
                    var s = 0;
                    for (s; s < 4; s++) {
                        //h[s].attr("class", "disabled");

                        h[s].removeClass('active');

                        console.log(s);
                        if (s == 3) {

                            p2.addClass('active');
                        }
                    }
                }

    //*************************
    //FUNCION PASO 3
                function pasoo3() {
                    var l = [form1, form2, form3, form4];
                    var n = 0;
                    for (n; n < 4; n++) {
                        //l[n].attr("class", "disabled");
                        l[n].removeClass('tab-pane active');
                        l[n].addClass('tab-pane');
                        console.log(n);
                        if (n == 3) {

                            form3.addClass('tab-pane active');
                        }
                    }


                    var h = [p1, p2, p3, p4];
                    var s = 0;
                    for (s; s < 4; s++) {
                        //h[s].attr("class", "disabled");

                        h[s].removeClass('active');

                        console.log(s);
                        if (s == 3) {

                            p3.addClass('active');
                        }
                    }
                }

    //************************
    //FUNCION PASO 4
                function pasoo4() {
                    var l = [form1, form2, form3, form4];
                    var n = 0;
                    for (n; n < 4; n++) {
                        //l[n].attr("class", "disabled");
                        l[n].removeClass('tab-pane active');
                        l[n].addClass('tab-pane');
                        console.log(n);
                        if (n == 3) {

                            form4.addClass('tab-pane active');
                        }
                    }


                    var h = [p1, p2, p3, p4];
                    var s = 0;
                    for (s; s < 4; s++) {
                        //h[s].attr("class", "disabled");

                        h[s].removeClass('active');

                        console.log(s);
                        if (s == 3) {

                            p4.addClass('active');
                        }
                    }
                }


                //FIN DE LAS FUNCIONES*/

            </script> 

            <script type="text/javascript">


            </script>
            <script type="text/javascript" src="../js/bootstrap.min.js"></script>

            <script src="../js/menu.js"></script>
            <script src="../js/busqueda.js"></script>
            <%--                <script src="../js/ordenDC.js"></script>--%>



            <script type="text/javascript">

            </script>

    </body>
</html>
