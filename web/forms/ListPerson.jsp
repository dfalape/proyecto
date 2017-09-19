<%-- 
    Document   : ListPerson
    Created on : 22-ago-2017, 18:23:10
    Author     : REDP
--%>

<%@page import="model.Person"%>
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
    <link rel="stylesheet" type="text/css" href="../js/data_table/dataTables.bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../js/data_table/buttons/buttons.dataTables.min.css">
    <link rel="stylesheet" href="../css/bootstrap.min.css">

    <title>Lista de Persona</title>

</head>

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


<div class="titleList">
    <h1>Lista de Personas</h1>
</div>
<div class="tableList">

    <table id="miTabla" class="table table-condensed table-striped table-bordered">
        <thead>
            <tr>
                <th>Código</th>
                <th>Nombre</th>
                <th>Apellido</th>  
                <th>Centro</th>
                <th>Estado</th>
                <th>Acciones</th>   
            </tr>
        </thead>
        <%!
            Iterator it2 = null;
            Person p2;
        %>

        <jsp:useBean id="obj1" class="controllers.PersonController" scope="page">

        </jsp:useBean>
        <%                        try {
                obj1.consultList();

                it2 = obj1.getEmployeeList().iterator();
        %>

        <%
            while (it2.hasNext()) {
                p2 = (Person) it2.next();
        %>
        <tbody id="elemento_destino">
            <tr data-id="1">
                <td><%= p2.getCode()%></td>
                <td><%= p2.getName()%></td>
                <td><%= p2.getLastName()%></td>
                <td><%= p2.getIdCenter().getName() %> </td>
                <td><%= p2.getIdState().getDescription() %> </td>
                <td><a href="#">Cargar</a></td>
            </tr>

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
    <button class="btn btn btn-primary" formaction="Register.jsp" >Nuevo</button>
</form>

<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
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


<%                             } else {
        out.println("<script> setInterval(s, 100); function s () {swal({title: 'Inicie Sesion',text: 'Inicie sesion para poder acceder.'}); setInterval(login, 3000);}</script>");
        out.println("<script>function login () {location.replace('Login_1.jsp')}</script>");

    }
%>

