<%-- 
    Document   : proyectoF
    Created on : 12-jul-2017, 0:46:10
    Author     : rober
--%>
<%@page import="model.FormativeProject"%>
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
    <title>Proyecto Formativo</title>

</head>

<div class="titleList">
    <h1>Lista Proyecto Formativo</h1>
</div>

<div class="tableList">

    <table id="miTabla" class="table table-condensed table-striped table-bordered">
        <thead>
            <tr>
                <th>Codigo Proyecto</th>
                <th>Nombre Proyecto</th>
                <th>Version del Proyecto</th>  
                <th>codigo diseño curricular</th>  
                <th>Acciones</th>   
            </tr>
        </thead>
        <%!                    Iterator it = null;
            FormativeProject Pf;
        %>
        <jsp:useBean id="obj" class="controllers.FormativeProjectController" scope="page">

        </jsp:useBean>
        <%                    try {
                obj.consultProjectForm();

                it = obj.getFormativeProjectList().iterator();
        %>





        <%
            while (it.hasNext()) {
                Pf = (FormativeProject) it.next();
        %>
        <tbody id="elemento_destino">
            <tr data-id="1">
                <td><%= Pf.getCode()%></td>
                <td><%= Pf.getProjectName()%></td>
                <td><%= Pf.getVersion()%></td>
                <td><%= Pf.getCurricularDesign_code().getCode()%></td>
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

    </table>

    <form class="listButton" method="post" action="proyectoFedit.jsp" name="FormEditPF" id="FormEditPF">
        <input type="hidden" id="send" name="send">
    </form>



</div> <!-- container -->


<form class="listButton">
    <button id="pfNuevo" class="btn btn-danger" formaction="#">NUEVO</button>
</form>
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        //captura de las secciones
        var sectionTotal = $('#sectionTotal');
        //Varriable de acortacion
        var none = 'ocultar';
        var block = 'mostrar';
        //boton de nuevo
        var pfNuevo = $('#pfNuevo');
        //boton de mostrar paso 1 dek diselo curricular
        pfNuevo.focusin(function () {
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
        $("#pfNuevo").focusin(function () {
            $("#sectionTotal").load("proyectoF.jsp");
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



<script src="../js/menu.js"></script>
<script src="../js/busqueda.js"></script>

<script type="text/javascript" src="../js/cargarPfEdit.js"></script>
<script type="text/javascript" src="js/JScargar.js"></script>
<%--                <script src="../js/ordenDC.js"></script>--%>
