
<%@page import="model.FormativeProject"%>
<%@page import="model.CurricularDesign"%>
<%@page import="model.TrainingCenter"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="../css/nav.css">   
        <link rel="stylesheet" href="../css/formativeProjectCC.css">	  
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/font-awesome.min.css">
        <link rel="stylesheet" href="../css/pasosLineTime.css">
        <link rel="stylesheet" type="text/css" href="../css/sweetalert.css">

        <script type="text/javascript" src="../js/sweetalert.min.js"></script>
        <title>Proyecto Formativo</title>
        <script type="text/javascript" src="js/cargarPfEdit.js"></script>

    </head>
    <body>
        <div class="formularios sectionP22">
            <input class="form-control" id="varRegPasos2F" type="hidden" value="<%= request.getParameter("confirmP2")%>">
            <div class="tituloFirst">
                <h1 class="titulo1">Proyecto Formativo</h1>
            </div>
            <div class="container form1">
                <div class="row ">
                    <section class="formP2 ">
                        <div class="wizard">
                            <div class="wizard-inner">
                                <div class="connecting-line lineab"></div>
                                <ul class="nav nav-tabs" role="tablist">

                                    <li id="paso1" role="presentation" class="active">
                                        <a href="#" data-toggle="tab" aria-controls="step1" role="tab" title="Competencias">
                                            <span class="round-tab">
                                                <i class="glyphicon glyphicon-folder-open"></i>
                                            </span>
                                        </a>
                                    </li>

                                    <li id="paso2" role="presentation" class="">
                                        <a href="#" data-toggle="tab" aria-controls="step2" role="tab" title="Resultados de Aprendizaje">
                                            <span class="round-tab">
                                                <i class="glyphicon glyphicon-pencil"></i>
                                            </span>
                                        </a>
                                    </li>
                                    <li  id="paso3" role="presentation" class="">
                                        <a href="#" data-toggle="tab" aria-controls="step3" role="tab" title="Control del documento">
                                            <span class="round-tab">
                                                <i class="glyphicon glyphicon-picture"></i>
                                            </span>
                                        </a>
                                    </li>

                                    <li  id="paso4" role="presentation" class="">
                                        <a href="#" data-toggle="tab" aria-controls="step4" role="tab" title="Fin Proceso">
                                            <span class="round-tab">
                                                <i class="glyphicon glyphicon-ok"></i>
                                            </span>
                                        </a>
                                    </li>

                                    <li id="paso5" role="presentation" class="">
                                        <a href="#" data-toggle="tab" aria-controls="step5" role="tab" title="Fin Proceso">
                                            <span class="round-tab">
                                                <i class="glyphicon glyphicon-bell"></i>
                                            </span>
                                        </a>
                                    </li>

                                    <li  id="paso6" role="presentation" class="">
                                        <a href="#" data-toggle="tab" aria-controls="step6" role="tab" title="Fin Proceso">
                                            <span class="round-tab">
                                                <i class="glyphicon glyphicon-step-backward"></i>
                                            </span>
                                        </a>
                                    </li>

                                </ul>
                            </div>
                            <section class="formP2">
                                <form method="POST" action="../ServletFormativeProject" class="form" id="proyectoFormative">
                                    <div class="tab-content">
                                        <div class="tab-pane active " role="tabpanel" id="step1">

                                            <div class="titulo2">
                                                <h6>1. Información básica del Proyecto</h6>
                                            </div>
                                            <ul class="list-inline pull-right">


                                                <hr class="linea2">




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

                                                    <%!
                                                        Iterator it = null;
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

                                                <div class="row">
                                                    <li class="btp2 lif"><a href="#" class="hrefLi btn btn-primary col-md-4">Continue</a></li>
                                                </div>

                                            </ul>
                                        </div>
                                        <div class="tab-pane" role="tabpanel" id="step2">
                                            <div class="titulo2">
                                                <h6>paso 2 Proyecto Formativo</h6>
                                            </div>

                                            <ul class="list-inline pull-right">
                                                <div id="">
                                                    <hr class="linea2">
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
                                                    <div class="row">
                                                        
                                                        <li class="btp3 lif"><a href="#" class="hrefLi btn btn-primary col-md-4">Continue</a></li>
                                                        <li class="btp1 lif"><a href="#" class="hrefLi btn btn-primary col-md-4">Atrás</a></li>
                                                    </div>

                                            </ul>
                                        </div>
                                        <div class="tab-pane" role="tabpanel" id="step3">
                                            <div class="titulo2">
                                                <h6>paso 3 proyecto formativo</h6>
                                            </div>
                                            <ul class="list-inline pull-right">

                                                <hr class="linea2">
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
                                               

                                                <div class="row">
                                                        
                                                        <li class="btp4 lif"><a href="#" class="hrefLi btn btn-primary col-md-4">Continue</a></li>
                                                        <li class="btp2 lif"><a href="#" class="hrefLi btn btn-primary col-md-4">Atrás</a></li>
                                                    </div>
                                            </ul>
                                        </div>
                                        <div class="tab-pane" role="tabpanel" id="step4">
                                            <hr class="linea2"> 
                                            <ul class="list-inline pull-right">
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
                                          
                                            <div class="row">
                                                        
                                                        <li class="btp5 lif"><a href="#" class="hrefLi btn btn-primary col-md-4">Continue</a></li>
                                                        <li class="btp3 lif"><a href="#" class="hrefLi btn btn-primary col-md-4">Atrás</a></li>
                                                    </div>
                                            </ul>
                                        </div>
                                        <div class="tab-pane" role="tabpanel" id="step5">
                                            <div class="titulo2">
                                                <h6>..  DISEÑO CURRICULAR 5.. </h6>
                                            </div>
                                            <hr>
                                            <ul class="list-inline pull-right">
                                            

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
                                            <hr class="">
                                           
               
                                            
                                            <div class="row">
                                                        
                                                        <li class="btp6 lif"><a href="#" class="hrefLi btn btn-primary col-md-4">Continue</a></li>
                                                        <li class="btp4 lif"><a href="#" class="hrefLi btn btn-primary col-md-4">Atrás</a></li>
                                                    </div>
                                            </ul>
                                        </div>
                                        <div class="tab-pane" role="tabpanel" id="step6">
                                            <div class="titulo2">
                                                <h6>.. FIN DISEÑO CURRICULAR 6 .. </h6>
                                            </div>
                                            <hr>
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

                                            
                                            <br>
                                            <div class="row">
                                                        
                                                       
                                                        <li class="btp5 lif"><a href="#" class="hrefLi btn btn-primary col-md-4">Atrás</a></li>
                                                    </div>
                                        </div>
                                    </div>

                                    <div class="clearfix"></div>
                                </form>
                            </section>
                        </div>

                    </section>
                </div>


            </div>


            <input id="RTAPeticiones"  class="" type="hidden" value=""/>
        </div>
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
                var dcLista = $('#finPaso2DC');
                //boton de mostrar paso 1 dek diselo curricular
                dcLista.focusin(function () {
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
                $("#finPaso2DC").focusin(function () {
                    $("#sectionTotal").load("ListDC.jsp");
                });

                //FIN DEL PROCESO
                var v = $("#varRegPasos2F").val();
                if (v == "dc2") {
                    swal({
                        title: "DISEÑO CURRICULAR PASO 1!",
                        text: "Se Insertó! Correctamente",
                        imageUrl: "../images/thumbs-up.jpg"
                    });
                    $("#varRegPasos2F").val("");
                }
            });

            //iconos del FORMULARIO PARA CAMBIAR DE PASO
            var p1 = $('#paso1');
            var p2 = $('#paso2');
            var p3 = $('#paso3');
            var p4 = $('#paso4');
            var p5 = $('#paso5');
            var p6 = $('#paso6');

            //botones de clic

            var bp1 = $('.btp1');
            var bp2 = $('.btp2');
            var bp3 = $('.btp3');
            var bp4 = $('.btp4');
            var bp5 = $('.btp5');
            var bp6 = $('.btp6');
            //variables de los botones imagenes

            //validacion de los formularios
            var form1 = $('#step1');
            var form2 = $('#step2');
            var form3 = $('#step3');
            var form4 = $('#step4');
            var form5 = $('#step5');
            var form6 = $('#step6');

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
            
            //PASO 5
            bp5.focusin(function () {
                setTimeout('pasoo5()', 10);

            });
            p5.focusin(function () {
                setTimeout('pasoo5()', 10);

            });

            //FIN PASO 5
            
            //PASO 6
            bp6.focusin(function () {
                setTimeout('pasoo6()', 10);

            });
            p6.focusin(function () {
                setTimeout('pasoo6()', 10);

            });

            //FIN PASO 6


            //*************************
            //FUNCION PASO 1
            function pasoo1() {
                var l = [form1, form2, form3, form4, form5, form6];
                var n = 0;
                for (n; n < 6; n++) {
                    //l[n].attr("class", "disabled");
                    l[n].removeClass('tab-pane active');
                    l[n].addClass('tab-pane');
                    console.log(n);
                    if (n == 5) {

                        form1.addClass('tab-pane active');
                    }
                }


                var h = [p1, p2, p3, p4, p5, p6];
                var s = 0;
                for (s; s < 6; s++) {
                    //h[s].attr("class", "disabled");

                    h[s].removeClass('active');

                    console.log(s);
                    if (s == 5) {

                        p1.addClass('active');
                    }
                }
            }

            //*********************
            //FUNCION PASO 2

            function pasoo2() {
                var l = [form1, form2, form3, form4, form5, form6];
                var n = 0;
                for (n; n < 6; n++) {
                    //l[n].attr("class", "disabled");
                    l[n].removeClass('tab-pane active');
                    l[n].addClass('tab-pane');
                    console.log(n);
                    if (n == 5) {

                        form2.addClass('tab-pane active');
                    }
                }


                var h = [p1, p2, p3, p4, p5, p6];
                var s = 0;
                for (s; s < 6; s++) {
                    //h[s].attr("class", "disabled");

                    h[s].removeClass('active');

                    console.log(s);
                    if (s == 5) {

                        p2.addClass('active');
                    }
                }
            }

            //*************************
            //FUNCION PASO 3
            function pasoo3() {
                var l = [form1, form2, form3, form4, form5, form6];
                var n = 0;
                for (n; n < 6; n++) {
                    //l[n].attr("class", "disabled");
                    l[n].removeClass('tab-pane active');
                    l[n].addClass('tab-pane');
                    console.log(n);
                    if (n == 5) {

                        form3.addClass('tab-pane active');
                    }
                }


                var h = [p1, p2, p3, p4, p5, p6];
                var s = 0;
                for (s; s < 6; s++) {
                    //h[s].attr("class", "disabled");

                    h[s].removeClass('active');

                    console.log(s);
                    if (s == 5) {

                        p3.addClass('active');
                    }
                }
            }

            //************************
            //FUNCION PASO 4
            function pasoo4() {
                var l = [form1, form2, form3, form4, form5, form6];
                var n = 0;
                for (n; n < 6; n++) {
                    //l[n].attr("class", "disabled");
                    l[n].removeClass('tab-pane active');
                    l[n].addClass('tab-pane');
                    console.log(n);
                    if (n == 5) {

                        form4.addClass('tab-pane active');
                    }
                }


                var h = [p1, p2, p3, p4, p5, p6];
                var s = 0;
                for (s; s < 6; s++) {
                    //h[s].attr("class", "disabled");

                    h[s].removeClass('active');

                    console.log(s);
                    if (s == 5) {

                        p4.addClass('active');
                    }
                }
            }
            
            //************************
            //FUNCION PASO 5
            function pasoo5() {
                var l = [form1, form2, form3, form4, form5, form6];
                var n = 0;
                for (n; n < 6; n++) {
                    //l[n].attr("class", "disabled");
                    l[n].removeClass('tab-pane active');
                    l[n].addClass('tab-pane');
                    console.log(n);
                    if (n == 5) {

                        form5.addClass('tab-pane active');
                    }
                }


                var h = [p1, p2, p3, p4, p5, p6];
                var s = 0;
                for (s; s < 6; s++) {
                    //h[s].attr("class", "disabled");

                    h[s].removeClass('active');

                    console.log(s);
                    if (s == 5) {

                        p5.addClass('active');
                    }
                }
            }
            
            
            //************************
            //FUNCION PASO 6
            function pasoo6() {
                var l = [form1, form2, form3, form4, form5, form6];
                var n = 0;
                for (n; n < 6; n++) {
                    //l[n].attr("class", "disabled");
                    l[n].removeClass('tab-pane active');
                    l[n].addClass('tab-pane');
                    console.log(n);
                    if (n == 5) {

                        form6.addClass('tab-pane active');
                    }
                }


                var h = [p1, p2, p3, p4, p5, p6];
                var s = 0;
                for (s; s < 6; s++) {
                    //h[s].attr("class", "disabled");

                    h[s].removeClass('active');

                    console.log(s);
                    if (s == 5) {

                        p6.addClass('active');
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
