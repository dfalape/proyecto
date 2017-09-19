<%-- 
    Document   : ListDC
    Created on : 10-ago-2017, 23:21:21
    Author     : FERGO
--%>

<%@page import="model.CurricularDesign"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 
    <link rel="stylesheet" href="../css/listForm.css">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../css/sweetalert.css">
    <script type="text/javascript" src="../js/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../js/data_table/dataTables.bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../js/data_table/buttons/buttons.dataTables.min.css">
    <title>Lista Diseño Curricular</title>
</head>



<div class="titleList">
    <h1>Lista Diseño Curricular</h1>
</div>
<%!            Iterator it3 = null;
    CurricularDesign p3;
%>
<jsp:useBean id="obj3" class="controllers.CurricularDesignController" scope="page">

</jsp:useBean>
<%            try {
        obj3.consultCurricularD();

        it3 = obj3.getCurricularList().iterator();
%>
<div class="sectionP22">

    <table id="miTabla" class="table table-condensed table-striped table-bordered">
        <thead>
            <tr>
                <th>Código</th>
                <th>Nombre</th>
                <th>Fecha inicio</th> 
                <th>Estado</th>
                <th>acciones</th>
            </tr>
            <%
                while (it3.hasNext()) {
                    p3 = (CurricularDesign) it3.next();
            %>
        <tbody id="elemento_destino">
            <tr data-id="1">
                <td><%= p3.getCode()%></td>
                <td><%= p3.getName()%></td>
                <td><%= p3.getStartDate()%></td>
                <td><%= p3.getStateCode().getDescription() %>
                    
                </td>
                <td>
                    <a  class="edit"  href="">Mostrar</a>
                    <a  class="edit" name="editFormativeProject"  href="javascript:cargarCode('<%= p3.getCode()%>')">Editar</a>
                    <a class="delete" href="#">Deshabilitar</a>
                </td>
            </tr>
        </tbody>
        <%

            }
        %>
    </table>
    <%
        } catch (Exception e) {
            e.printStackTrace();
        }

    %>

</div> 

<form class="listButton">
    <button id="dcNuevo" class="btn btn-success" >Nuevo</button>
</form>
<!-- container -->

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
        var dcNuevo = $('#dcNuevo');
        //boton de mostrar paso 1 dek diselo curricular
        dcNuevo.focusin(function () {
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
        $("#dcNuevo").focusin(function () {
            $("#sectionTotal").load("DisenoC.jsp");
        });
    });
</script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/data_table/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="../js/data_table/dataTables.bootstrap.min.js"></script>





<script type="text/javascript">

    $(document).ready(function () {

//coidgo del datable
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

        //fin del datatable



    });


</script>


