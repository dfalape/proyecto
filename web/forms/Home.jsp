<%-- 
    Document   : Home
    Created on : 01-jul-2017, 19:20:17
    Author     : FERGO
--%>

<%--<%@page import="models.Person"%>--%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no">	
        <link rel="stylesheet" href="../css/listForm.css">

        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/home.css">
        <link rel="stylesheet" href="../css/validacionFORMS.css">
        <link rel="stylesheet" href="../css/desplegable.css">
        <link rel="stylesheet" href="../css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="../css/sweetalert.css">

        <script type="text/javascript" src="../js/sweetalert.min.js"></script>

        <title>Home</title>

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

                if (sessionU.getAttribute("show").toString() == "si") {
                    out.println("<script>swal({title: 'Bienvenido',text: '" + name2 + "'});</script>");
                    sessionU.setAttribute("show", "no");
                }
        %>

        <nav id="nav">                          
            <ul id="Etiquetas">
                <li><a id="etiLi" href="#"><span class="fa fa-bell-o fa lg"></span>  <%= name2 + " " + lastName2%> </a></li>
            </ul>
        </nav>

        <input id="txtId" type="hidden" value="<%= usu%>">
     
        <div id="administrador">
            <aside>
                <%-- 
                    <%!
                        Iterator it2 = null;
                        Person p2;
                    %>

            <jsp:useBean id="obj2" class="controllers.PersonController" scope="page">

            </jsp:useBean>
            <%
                try {
                    p2 = new Person();
                    p2.setCode(Long.parseLong(usu));
                    obj2.cosnultRole(p2);

                    it2 = obj2.getEmployeeList().iterator();

            %>
            <select name="txtIdCD"  class="form-control">
                <%                                     while (it2.hasNext()) {
                        p2 = (Person) it2.next();
                %>
                <option value="<%= p2.getIdRole().getName()%>"><%=p2.getIdRole().getName()%></option>
                <%

                    }
                %>
            </select>
            <%
                } catch (Exception e) {
                    e.printStackTrace();
                }

            %>
                --%>
                <hr class="linea3">
                <div class="Acording">
                    <ul id="accordion" class="accordion">
                        <li>
                            <div id="0a" class="link"><i class="fa fa-user-o fa fa"></i>Usuario <i class="fa fa-chevron-down fa fa"></i></div>
                            <ul id="submenu" class="submenu">	
                                <li id="upD"><a  class="a" href="#" >Modificar Datos</a></li>

                                <li id="mPass"><a class="a" href="#" >Cambiar contraseña</a></li>
                            </ul>
                        </li>

                        <li>
                            <div id="1a" class="link"><i class="fa fa-archive fa fa"></i>Procesos<i class="fa fa-chevron-down fa fa"></i></div>
                            <ul class="submenu">


                                <li id="lDC" ><a class="a" href="#">Diseño curricular</a></li>
                                <li id="lPF" ><a class="a" href="#">Proyecto Formativo</a></li>
                                <li id="lPP" ><a class="a" href="#">Planeación Pedagógica</a></li>
                                <li id="lCG" ><a class="a" href="#">Cronograma Gantt</a></li>
                                <li id="lGU" ><a class="a" href="#">Gestionar Guía</a></li>
                                <li id="lSM" ><a class="a" href="#">Generar cuadro resumen</a></li>
                            </ul>
                        </li>

                        <li>
                            <div id="2a" class="link"><i class="fa fa-paint-brush fa fa"></i>Usuarios<i class="fa fa-chevron-down fa fa"></i></div>
                            <ul class="submenu">	
                                <li id="lR" ><a class="a" href="#">Roles y tareas</a></li>
                                <li id="lLP" ><a class="a" href="#">Usuarios</a></li>
                                <li id="" ><a class="a" href="#">Diseño responsive sub-munu</a></li>
                                <li id="" ><a class="a" href="#">Diseño responsive sub-munu</a></li>
                                <li id="" ><a class="a" href="#">Diseño responsive sub-munu</a></li>
                            </ul>
                        </li>

                        <li>
                            <div id="3a" class="link"><i class="fa fa-power-off fa fa"></i>Sesión <i class="fa fa-chevron-down fa fa"></i></div>
                            <ul class="submenu">
                                <li><a class="a"
                                       <%                                       out.println("href='../index.jsp?cerrar=true'");
                                       %>
                                       >cerrar sesión</a></li>


                            </ul>
                        </li>
                    </ul>
                </div>
            </aside>
        </div>
        
            </aside>

        </div>
       

        
       
            </aside>
        </div>
        <section id="sectionTotal" class="listCompletas">

        </section>

        <input class="form-control" id="variableRegPasos2F" type="hidden" value="<%= request.getParameter("confirmP2")%>">

        <noscript>Lo sentimos javascript esta dehabilitado</noscript>
        <script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
        <script type="text/javascript">

            $(document).ready(function () {
                //VALIADACION DEL SEGUNDO PASO DE SIEÑO CURRICULAR, PLANEACION PEDAGOGICA Y PROYECTO FORMATIVO
                //***** diseño curricular paso 2 ******//
                $(document).ready(function () {

                    var v = $("#variableRegPasos2F").val();
                    if (v == "dc2") {
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
                        $("#sectionTotal").load("DisenoC1.jsp");

                    }
                    if (v == "pf2") {
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
                        $("#sectionTotal").load("proyectoF1.jsp");

                    }
                    if (v == "pp2") {
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
                        $("#sectionTotal").load("planeacionP1.jsp");

                    }
                });
                //FIN DEL SEGUNDO PASO DE LOS TRES FORMATOS
                //validacion de cuando Mostrar las secciones
                //*********************************
                //**********************************
                //captura de las secciones
                var sectionTotal = $('#sectionTotal');


                //captura de los botones
                var btUpD = $("#upD");
                var btMpass = $("#mPass");
                var btLdc = $("#lDC");
                var btLpf = $("#lPF");
                var btLpp = $("#lPP");
                var btLr = $("#lR");
                var btLlp = $("#lLP");
                //Varriable de acortacion
                var none = 'ocultar';
                var block = 'mostrar';


                //validacion en la forma de mostrar las secciones
                //FORMULARIOS DENTRO DE UNA MISMA SECCION 
                //***************************++++++++++++++++++

                //boton ede actualizar
                btUpD.focusin(function () {
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
                //boton de cambiar contraseña
                btMpass.focusin(function () {
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
                //boton de mostrar la lista de deseño curricular
                btLdc.focusin(function () {
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
                //boton de mostrar la lista de proyecto formativo
                btLpf.focusin(function () {
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
                //boton de mostrar la lista de planeacion pedagogica
                btLpp.focusin(function () {
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
                //boton de mostrar la lista de personas
                btLlp.focusin(function () {
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
                //boton de mostrar la lista de roles
                btLr.focusin(function () {
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



                //************************************
                //*******************+*++++++++++++
                //CARGAR LOS FORMULARIOS AL MENU DE HOME
                //**********************************
                //Modificar Datos
                $("#upD").focusin(function () {
                    $("#sectionTotal").load("updateData.jsp");
                });
                //cambiar contraseña
                $("#mPass").focusin(function () {
                    $("#sectionTotal").load("ResetPassword.jsp");
                });
                //Lista Diseño Curricular
                $("#lDC").focusin(function () {
                    $("#sectionTotal").load("ListDC.jsp");
                });
                //Lista proyecto formativo
                $("#lPF").focusin(function () {
                    $("#sectionTotal").load("ListFormativeP.jsp");
                });
                //Lista planeacion pedagogica
                $("#lPP").focusin(function () {
                    $("#sectionTotal").load("ListPP.jsp");
                });
                //Lista summary table
                $("#lSM").focusin(function () {
                    $("#sectionTotal").load("ListSC.jsp");
                });
                //Roles y permisos
                $("#lR").focusin(function () {
                    $("#sectionTotal").load("Roles.jsp");
                });
                //Usuarios
                $("#lLP").focusin(function () {
                    $("#sectionTotal").load("ListPerson.jsp");
                });
                //******************************
                //ULTIMA PARTE

                //*****************
                //PARTE DEL DISEÑO CURRICULAR 
                //***************




                ///ajax modificación de datos
                $('#formUpdate').on('submit', function (e) {
                    var name = $('#nameUpdate').val();
                    var lastName = $('#lastNameUpdate').val();
                    var phone = $('#phoneUpdate').val();
                    var address = $('#addressUpdate').val();
                    var code = $('#txtId').val();
                    var buttonUpdate = $('#btUpdate').val();
                    e.preventDefault();
                    //metodo AJAX PARA MODIFICAR DATOS

                    $.ajax({
                        //variable
                        type: 'POST',
                        url: '../ServletEmployee',
                        data: {nom: name, lastNamenom: lastName, phonenom: phone, addressnom: address, codenom: code, buttonU: buttonUpdate},
                        success: function (result) {
                            if (result == "1") {

                                swal({

                                    title: "Vamous GPAI!",
                                    text: "Los datos fueron Modificados satisfactoriamente.",
                                    imageUrl: "../images/thumbs-up.jpg"
                                });
                            } else {

                                swal({

                                    title: "Vamous GPAI!",
                                    text: "¡Lo Sentimos! Los Datos NO se modificaron Satifactoriamente.",
                                    imageUrl: "../images/error1.png"
                                });
                            }
                        }



                    });
                });

                //ajax modificación de contraseña.

                $('#formPass').on('submit', function (e) {

                    var password = $('#password').val();
                    var password2 = $('#password-confirm').val();
                    var code = $('#txtId').val();
                    var buttonChange = $('#resetp').val();
                    if (password == password2)
                    {
                        e.preventDefault();
                        $.ajax({
                            type: 'POST',
                            url: '../ServletEmployee',
                            data: {pass: password, codem: code, changePass: buttonChange},
                            success: function (result) {
                                if (result == "1")
                                {
                                    alert("contraseña modificada");
                                }
                            }

                        });
                    } else
                    {
                        alert("las contraseñas no coinciden");
                    }


                });



            });
        </script>

    </section>
</section>          

<%                             } else {
        out.println("<script> setInterval(s, 100); function s () {swal({title: 'Inicie Sesion',text: 'Inicie sesion para poder acceder.'}); setInterval(login, 1700);}</script>");
        out.println("<script>function login () {location.replace('Login_1.jsp')}</script>");

    }
%>




<%@include file="../template/footer.jsp" %>

<script src="../js/jquery.js"></script>
<script src="../js/acordion.js"></script>

</body>
</html>
