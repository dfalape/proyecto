<%-- 
    Document   : ListPP
    Created on : 29-ago-2017, 12:28:18
    Author     : rober
--%>

<%@page import="models.PadagogicalPlanning"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" href="../css/listForm.css">	
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../css/sweetalert.css">
    <script type="text/javascript" src="../js/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../js/data_table/dataTables.bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../js/data_table/buttons/buttons.dataTables.min.css">
    <title>Lista de Planeacion peadagogica</title>
</head>


<section class="contenidoTable">
<div class="titleList">
    <h1>Lista de la Planeación Pedagogica</h1>
</div>

<div class="tableList">
    <table id="miTabla" class="table table-condensed table-striped table-bordered">
        <thead>
            <tr>
                <th>Codigo </th>
                <th>Fecha de inicio</th>  
                <th>codigo proyecto formativo</th>  
                <th>Acciones</th>   
            </tr>
        </thead>
        <%!                    Iterator it = null;
            PadagogicalPlanning Pf;
        %>
        <jsp:useBean id="obj" class="controllers.PadagogicalPlanningController" scope="page">

        </jsp:useBean>
        <%                    try {
                obj.consultP();

                it = obj.getpList().iterator();
        %>





        <%
            while (it.hasNext()) {
                Pf = (PadagogicalPlanning) it.next();
        %>
        <tbody id="elemento_destino">
            <tr data-id="1">
                <td><%= Pf.getCode()%></td>
                <td><%= Pf.getStartDate()%></td>
                <td><%= Pf.getIdFormativeP().getCode()%></td>
                <td> 
                    <a  class="edit"  href="">Mostrar</a>
                    <a  class="edit" name="editFormativeProject"  href="javascript:cargarCode('<%= Pf.getCode()%>')">Editar</a>
                    <a class="delete" href="#">Deshabilitar</a>
                </td>   


            </tr>
        </tbody>

        <%
            }
        %>

        <%
            } catch (Exception e) {
                e.printStackTrace();
            }

        %>

        <tfoot>
            <tr>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Telefono</th>  
                <th>Acciones</th>   
            </tr>
        </tfoot>
    </table>
    <form method="post" action="proyectoFedit.jsp" name="FormEditPF" id="FormEditPF">
        <input type="hidden" id="send" name="send">
    </form>


</div> <!-- container -->
</section>
<form class="listButton">
    <button id="ppNuevo" class="btn btn-danger" formaction="#">NUEVO</button>
</form>

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
        var ppNuevo = $('#ppNuevo');
        //boton de mostrar paso 1 dek diselo curricular
        ppNuevo.focusin(function () {
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
        $("#ppNuevo").focusin(function () {
            $("#sectionTotal").load("planeacionP.jsp");
        });
    });
</script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/data_table/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="../js/data_table/dataTables.bootstrap.min.js"></script>


<script type="text/javascript">

    $(document).ready(function () {


        $('#miTabla').DataTable({
            "scrollY": "200px",
            "scrollCollapse": true,
            "paging": false,
            dom: 'Bfrtip',
            buttons: [
                'copyHtml5',
                'excelHtml5',
                'csvHtml5',
                'pdfHtml5'
            ]


        });

       

    });


</script>

