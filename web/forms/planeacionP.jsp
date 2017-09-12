<%-- 
    Document   : planeacionP
    Created on : 14-jul-2017, 7:43:02
    Author     : rober
--%>

<%@page import="models.ProjectPhases"%>
<%@page import="models.FormativeProject"%>
<%@page import="models.LearningOutcomes"%>
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
    <title>Planeación pedagógica</title>
    <script type="text/javascript" src="../js/leerVariables.js"></script>
</head>


<div id="formularios">

    <div class="tituloFirst">
        <h1 class="titulo1">Planeación pedagógica</h1>
    </div>
    <form class="form" action="" id="planeacionPedagogicaForm" method="POST">


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
        <select  id="txtProyectoF" onChange="leerSelect();" name="txtCodeF" class="form-control">
            <option value="" >Seleccionar</option>
            <%
                while (it.hasNext()) {
                    proyF = (FormativeProject) it.next();
            %>

            <option value="<%= proyF.getCode()%>"><a href="javascript:leerSelect('<%= proyF.getCode()%>')"><%= proyF.getCode()%></a></option>

            <%

                }
            %>
        </select> 
        <%
            } catch (Exception e) {
                e.printStackTrace();
            }

        %>


        <hr>
        <div>
            <p>Ciudad y Fecha:</p>
            <div class="input-group">
                <span class="input-group-addon"><i  class="fa fa-map-marker fa-lg"></i></span>
                <input id="cityDate" type="text" name="txtCity" class="field" placeholder="232320" autofocus><br/>	
            </div>
        </div>
        <div class="columns">
            <div>
                <p>Fecha de Inicio:</p>
                <div class="input-group">
                    <span class="input-group-addon"><i  class="fa fa-calendar-plus-o fa-lg"></i></span>
                    <input id="dateStart" type="text" name="txtStartDate" class="field" placeholder="232320" autofocus><br/>	
                </div>
            </div>
            <div>
                <p>Fecha de Terminación:</p>		
                <div class="input-group">		
                    <span class="input-group-addon"><i class="fa fa-calendar-plus-o fa-lg"></i></span>
                    <input id="dateEnd" type="text" name="txtEndingDate" class="field" placeholder="Programación de Software"> <br/>
                </div>
            </div>
        </div>  
        <div>
            <p>Ambiente:</p>		
            <textarea id="enviroment" type="text" name="txtEnv" class="field" placeholder="Contenido de la Justificación ......"></textarea><br/>
        </div>
        <div>
            <p>Materiales Devolutivos:</p>		
            <textarea id="materialD" type="text" name="txtMD" class="field" placeholder="Contenido de la Justificación ......"></textarea><br/>
        </div>
        <div>
            <p>Materiales consumibles:</p>		
            <textarea id="materialC" type="text" name="txtMC" class="field" placeholder="Contenido de la Justificación ......"></textarea><br/>
        </div>



        <hr class="linea2">
        <p class="center-content">
            <input type="submit" id="btSendPlaning" class="btn btn-success form-control"  name="btSend" value="Registrar planeación">      
        </p>

    </form>

</div>


<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>

<script type="text/javascript">

        $(document).ready(function () {
            $('#planeacionPedagogicaForm').on('submit', function (e) {
                var ciudadFecha = $('#cityDate').val();
                var fechaInicio = $('#dateStart').val();
                var fachaTerminacion = $('#dateEnd').val();
                var Ambiente = $('#enviroment').val();
                var meterialD = $('#materialD').val();
                var materialC = $('#materialC').val();
                var codePF = $('#txtProyectoF').val();

                //boton
                var btSend = $('#btSendPlaning').val();
                /*e.prevwnt es s{upr importante*/
                e.preventDefault();
                $.ajax({
                    type: 'POST',
                    url: '../ServletPadagogicalPlanning',
                    data: {txtCity: ciudadFecha, txtStartDate: fechaInicio, txtEndingDate: fachaTerminacion, txtEnv: Ambiente, txtMD: meterialD, txtMC: materialC, txtCodeF: codePF, btSend: btSend},
                    success: function (result) {
                        alert("lo hizo");
                        location.replace("Home.jsp?confirmP2=pp2");
                    }

                }
                );
            });
            
            
        });
</script>

<script src="../js/jquery.js"></script>
<script src="../js/menu.js"></script>
<script src="../js/busqueda.js"></script>
<script src="../js/ordenDC.js"></script>
