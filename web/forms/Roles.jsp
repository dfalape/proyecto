<%-- 
    Document   : Roles
    Created on : 01-jul-2017, 20:08:31
    Author     : FERGO
--%>

<%@page import="models.Person"%>
<%@page import="models.Role"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/reset.css">
        <link rel="stylesheet" href="../css/listForm.css">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="../css/sweetalert.css">
        <link rel="stylesheet" type="text/css" href="../js/data_table/dataTables.bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="../js/data_table/buttons/buttons.dataTables.min.css">

        <script type="text/javascript" src="../js/sweetalert.min.js"></script>
        <title>Roles</title>
    </head>
    
            <div class="titleList">
                <h1>Roles</h1>
            </div>

            <div class="listCompletas">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="panel panel-default">
                            <div class="panel-heading">Asignación de roles</div>
                            <div class="panel-body">
                                <form class="form-horizontal" role="form" method="POST" action="../ServletEmployee">
                                    <input type="hidden" name="_token" value="vvgYZEqmOklFdCshkHtKzrZ3ssJVcEynGB6nY42z">

                                    <div class="form-group">
                                        <label for="email" class="col-md-4 control-label">Identiicación</label>

                                        <div class="col-md-6">
                                            <input id="id" type="number" class="form-control" name="txtId" required autofocus>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="password" class="col-md-4 control-label">Rol</label>
                                        <div class="col-md-6">
                                            <%!                                    Iterator it = null;
                                                Role p;
                                            %>

                                            <jsp:useBean id="obj" class="controllers.RoleController" scope="page">

                                            </jsp:useBean>
                                            <%                                try {
                                                    obj.consultRole();

                                                    it = obj.getRoleList().iterator();
                                            %>
                                            <select name="txtRole"  class="form-control">
                                                <%
                                                    while (it.hasNext()) {
                                                        p = (Role) it.next();
                                                %>

                                                <option value="<%= p.getCode()%>"><%=p.getName()%></option>

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

                                    <div class="form-group">
                                        <div class="col-md-8 col-md-offset-4">
                                            <button name="btnSendRole" type="submit" class="btn btn-primary">
                                                Asignar
                                            </button>
                                        </div>
                                    </div>
                                </form>

                            </div>
                                        
                        </div>
                    </div>
                                        <%!
            Iterator it2 = null;
            Person p2;
                                                                                                                                                                                                        %>

        <jsp:useBean id="obj1" class="controllers.PersonController" scope="page">

        </jsp:useBean>
        <%                                try {
                obj1.consultList();

                it2 = obj1.getEmployeeList().iterator();
        %>
        <div class="tableList">
            <table id="miTabla" class="table table-condensed table-striped table-bordered">
                <thead>
                    <tr>
                        <th>Código </th>
                        <th>Nombre</th>  
                        <th>Apellido</th>  
                        <th>Acciones</th>   
                    </tr>
                </thead>
                <%
                    while (it2.hasNext()) {
                        p2 = (Person) it2.next();
                %>
                <tr>
                    <td><%= p2.getCode()%></td>
                    <td><%= p2.getName()%></td>
                    <td><%= p2.getLastName()%></td>
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
                </div>
            </div>
                                        
        </div>
        
  
    

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
