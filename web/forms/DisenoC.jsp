<%-- 
   Document   : proyectoF
   Created on : 12-jul-2017, 0:46:10
   Author     : rober
--%>


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
        <title>Diseño Curricular</title>
        <script type="text/javascript" src="js/JScargar.js"></script>

    </head>
    <body>
        <div class="formularios sectionP22">
            <input class="form-control" id="varRegPasos2F" type="hidden" value="<%= request.getParameter("confirmP2")%>">
            <div class="tituloFirst">
                <h1 class="titulo1">Diseño curricular</h1>
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
                                        <a href="#" data-toggle="tab" aria-controls="complete" role="tab" title="Fin Proceso">
                                            <span class="round-tab">
                                                <i class="glyphicon glyphicon-ok"></i>
                                            </span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <section class="formP2">
                                <form class="" method="post" action="" id="">  
                                    <div class="tab-content">
                                        <div class="tab-pane active " role="tabpanel" id="step1">

                                            <div class="titulo2">
                                                <h6>parte 1 deseño curricular</h6>
                                            </div>
                                            <ul class="list-inline pull-right">


                                                <hr class="linea2">




                                                <div class="columns">
                                                    <div>
                                                        <p>Código de Diseño:</p>
                                                        <div class="input-group">
                                                            <span class="input-group-addon"><i id="k" class="fa fa-code fa-lg"></i></span>
                                                            <input id="mitad" type="text" name="txtCode" class="form-control" placeholder="232320"><br/>    
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <p>Denominación del Programa:</p>       
                                                        <div class="input-group">       
                                                            <span class="input-group-addon"><i class="fa fa-bandcamp fa-lg"></i></span>
                                                            <input id="mitad" type="text" name="txtName" class="form-control" placeholder="Programación de Software"> <br/>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="columns">
                                                    <div>
                                                        <p>Versión:</p>
                                                        <div class="input-group">
                                                            <span class="input-group-addon"><i id="k" class="fa fa-user-circle-o fa-lg"></i></span>
                                                            <input id="mitad"  type="text" name="txtVersion" class="form-control" placeholder="200"> <br/>  
                                                        </div>
                                                    </div>

                                                </div><br>
                                                <div class="titulo">
                                                    <h6>Vigencia del Programa</h6>
                                                </div>
                                                <hr class="linea2">


                                                <div class="columns">
                                                    <div>
                                                        <p>Fecha Inicio:</p>
                                                        <div class="input-group">
                                                            <span class="input-group-addon"><i class="fa fa-calendar fa-lg"></i></span>
                                                            <input id="" class="form-control" type="date" name="txtStartDate" step="1" min="2000-01-01" max="2050-12-31" value="2050-01-01"> <br/>  
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <p>Fecha Fin:</p>       
                                                        <div class="input-group">       
                                                            <span class="input-group-addon"><i class="fa fa-calendar fa-lg"></i></span>
                                                            <input id="" class="form-control" type="text" name="txtEnndingDate"> <br/>
                                                        </div>
                                                    </div>
                                                </div>

                                                <br>
                                                <div class="row">

                                                    <li class="btp2 lif"><a href="#" class="hrefLi btn btn-primary col-md-4">Continue</a></li>
                                                </div>

                                            </ul>
                                        </div>
                                        <div class="tab-pane" role="tabpanel" id="step2">
                                            <div class="titulo2">
                                                <h6>Duración Máxima estimada de Aprendizaje</h6>
                                            </div>

                                            <ul class="list-inline pull-right">

                                                <hr class="linea2">

                                                <div class="columns">
                                                    <div>

                                                        <p>Duración Lectiva:</p>
                                                        <div class="input-group">
                                                            <span class="input-group-addon">
                                                                <i class="fa fa-calendar-check-o fa-lg"></i></span>
                                                            <input id="" type="number" name="txtLectivaDuration" class="form-control"  placeholder="6 meses"> <br/>
                                                        </div>

                                                        <p>Duración Práctica:</p>
                                                        <div class="input-group">
                                                            <span class="input-group-addon">
                                                                <i class="fa fa-calendar-check-o fa-lg"></i></span>
                                                            <input id="" type="number" name="txtPracticeDuration" class="form-control"  placeholder="6 meses"> <br/>
                                                        </div>
                                                    </div>
                                                    <div class="centro">
                                                        <div>
                                                            <p>Duración Total</p>
                                                            <div class="input-group">
                                                                <span class="input-group-addon">
                                                                    <i class="fa fa-calculator fa-lg"></i></span>
                                                                <input id="" type="number" class="form-control"  placeholder="12 meses" disabled> <br/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <hr class="linea2">

                                                <div>
                                                    <p>Nivel de formación:</p>
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="fa fa-code fa-lg"></i></span>
                                                        <select name="txtLevelT">
                                                            <option value="TECNICO">Técnico</option>
                                                            <option value="TECNOLOGO">Tecnólogo</option>
                                                        </select>   
                                                    </div>
                                                </div>

                                                <div>
                                                    <p>Justificación:</p>       


                                                    <textarea type="text" name="txtJustify" class="form-control" placeholder="Contenido de la Justificación ......"></textarea><br/>

                                                </div>
                                                <div class="columns">
                                                    <div>
                                                        <p>Requisitos de ingreso:</p>
                                                        <textarea type="text" name="txtRequerimentsI" id="" class="form-control" placeholder="Example: 9 grado, aptitud ... etc"></textarea><br/>   
                                                    </div>
                                                    <div>
                                                        <p>Descripción:</p>            
                                                        <textarea type="text" name="txtDescription" id="" class="form-control" placeholder="Example: desarrolla aplicativos ... etc" ></textarea><br/>  
                                                    </div>
                                                </div>

                                                <li><input type="submit" class="btn btn-primary btn-info-full next-step" value="Save"></li>
                                                <li class="btp3 lif"><a href="#" class="hrefLi btn btn-primary">Continue</a></li>
                                                <li class="btp1 lif"><a href="#" class="hrefLi btn btn-primary">Atrás</a></li>

                                            </ul>
                                        </div>
                                        <div class="tab-pane" role="tabpanel" id="step3">
                                            <div class="titulo2">
                                                <h6>Perfil Técnico del Instructor</h6>
                                            </div>
                                            <ul class="list-inline pull-right">

                                                <hr class="linea2">


                                                <div class="columns">
                                                    <div>
                                                        <p>Requisitos Académicos:</p>

                                                        <textarea type="text" name="txtRequerimentsIns" id="" class="form-control" placeholder="Example: Estudios universitarios... etc"></textarea><br/>   

                                                    </div> 
                                                    <div>
                                                        <p>Experiencia Laboral y/o especialización en:</p>
                                                        <textarea type="text" name="txtWorkIns" id="" class="form-control" placeholder="Example: veinticuatro meses de experie.. etc"></textarea><br/>  
                                                    </div>
                                                </div>
                                                <div class="columns">
                                                    <div>
                                                        <p>Competencias Mínimas:</p>
                                                        <textarea type="text" name="txtCompeteceIns" id="" class="form-control" placeholder="Example: Buen nivel de lectura.. etc"></textarea><br/>
                                                    </div>
                                                    <div>
                                                        <p>Estrategias Metodológicas:</p>
                                                        <textarea type="text" name="txtStragedyIns"  id="" class="form-control" placeholder="Example: Garantizar la calidad de .. etc" required=""></textarea><br/> 
                                                    </div>
                                                </div>
                                                <hr class="linea2">
                                                <div>
                                                    <p class="center-content">
                                                        <input type="submit" formaction="../ServletCurricularDesign" class="btn"  name="btSendDC" value="Siguiente">
                                                    </p>
                                                </div>



                                                <div class="row">
                                                <li><button type="button" class="btn btn-primary btn-info-full next-step col-md-4">Save</button></li>
                                                <li class="btp4 lif"><a href="#" class="hrefLi btn btn-primary col-md-4">Continue</a></li>
                                                <li class="btp2 lif"><a href="#" class="hrefLi btn btn-primary col-md-4">Atrás</a></li>
                                                </div>
                                            </ul>
                                        </div>
                                        <div class="tab-pane" role="tabpanel" id="step4">
                                            <div class="titulo2">
                                                <h6>.. FIN DISEÑO CURRICULAR .. </h6>
                                            </div>
                                            <hr>
                                            <p>Si desea puede registar otro o Consultarlos.</p>
                                            <hr class="linea2">
                                            <div class="columns">
                                                <div>
                                                    <input id="finPaso2DC" class="form-control btn btn-danger" type="submit"  value="Finalizar" formaction="ListDC.jsp">
                                                </div>


                                            </div>

                                            <br>
                                        </div>
                                        
                                        
                                    </div>

                                    <div class="clearfix"></div>
                                </form>
                            </section>
                        </div>

                    </section>
                </div>


            </div>
        </div>
    </div>
    <input id="RTAPeticiones"  class="" type="text" value=""/>

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
