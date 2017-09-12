<%-- 
    Document   : Register
    Created on : 01-jul-2017, 15:36:07
    Author     : FERGO
--%>

<%@page import="models.TrainingCenter"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">		
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/register.css">
        <link rel="stylesheet" href="../css/font-awesome.min.css">
        <link rel="stylesheet" href="../css/nav.css">	
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

                        %>
        <header>
            <div class="menu_bar">
                <a href="#" class="bt-menu"><span class="fa fa-list fa lg"></span>Menu</a>
            </div>
            <nav>
                <ul>
                    <li><a href="Home.jsp"><span class="fa fa-home fa lg"></span>Inicio</a></li>
                   
                    <div class="search_bar">
                        <span class="fa fa-bell-o fa lg"></span>  <%= name2 + " " + lastName2%> </a>
                    </div>
                </ul>

            </nav>
        </header><br><br><br>
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="panel panel-default">
                            <div class="panel-heading">Register</div>
                            <div class="panel-body">
                                <form class="form-horizontal" role="form" method="POST" action="../ServletEmployee">
                                    <input type="hidden" name="_token" value="vvgYZEqmOklFdCshkHtKzrZ3ssJVcEynGB6nY42z">

                                    <div class="form-group">
                                        <label for="name" class="col-md-4 control-label">Nombre</label>
                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <span class="input-group-addon "><i class="fa fa-user fa-lg"></i></span>
                                                <input id="name" type="text" class="form-control" name="txtName" value="" required autofocus>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="name" class="col-md-4 control-label">Apellido</label>
                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <span class="input-group-addon "><i class="fa fa-user-o fa-lg"></i></span>
                                                <input id="name" type="text" class="form-control" name="txtLastName" value="" required autofocus>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="name" class="col-md-4 control-label">Número identificación</label>
                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <span class="input-group-addon "><i class="fa fa-neuter fa-lg"></i></span>
                                                <input id="name" type="number" class="form-control" name="txtCode" value="" required autofocus>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="email" class="col-md-4 control-label">Email</label>
                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <span class="input-group-addon "><i class="fa fa-envelope-o fa-lg"></i></span>
                                                <input id="email" type="email" class="form-control" name="txtEmail"  required>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="password" class="col-md-4 control-label">Contraseña</label>
                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <span class="input-group-addon "><i class="fa fa-key fa-lg"></i></span>
                                                <input id="password" type="password" class="form-control" name="txtPassword" required>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="password-confirm" class="col-md-4 control-label">Confirmación de contraseña</label>
                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <span class="input-group-addon "><i class="fa fa-key fa-lg"></i></span>
                                                <input id="password-confirm" type="password" class="form-control" name="txtPasswordConfirmation" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="password-confirm" class="col-md-4 control-label">Fecha de nacimiento</label>
                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-calendar fa-lg"></i></span>
                                                <input id="mitad" class="field" type="date" name="txtDate" step="1" min="2000-01-01" max="2050-12-31" value="2050-01-01"> <br/>	
                                            </div>
                                        </div>      
                                    </div>
                                    <div class="form-group">
                                        <label for="name" class="col-md-4 control-label">Teléfono</label>
                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <span class="input-group-addon "><i class="fa fa-phone fa-lg"></i></span>
                                                <input id="name" type="number" class="form-control" name="txtNumber" value="" autofocus>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="name" class="col-md-4 control-label">Dirección</label>
                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <span class="input-group-addon "><i class="fa fa-address-book fa-lg"></i></span>
                                                <input id="name" type="text" class="form-control" name="txtAddress" value="" autofocus>
                                            </div>
                                        </div>
                                    </div>
                                    <%!
                                        Iterator it3 = null;
                                        TrainingCenter p3;
                                    %>

                                    <jsp:useBean id="obj3" class="controllers.TrainingCenterController" scope="page">

                                    </jsp:useBean>
                                    <%
                                        try {
                                            obj3.consultCenter();

                                            it3 = obj3.getCenterList().iterator();
                                    %>
                                    <select name="txtCmbComp2"  class="form-control" >
                                        <%
                                            while (it3.hasNext()) {
                                                p3 = (TrainingCenter) it3.next();
                                        %>

                                        <option value="<%= p3.getCode()%>"><%=p3.getName() %></option>

                                        <%

                                            }
                                        %>
                                    </select> 
                                    <%
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }

                                    %>
                                    <div class="form-group">
                                        <div class="col-md-6 col-md-offset-4">
                                            <button id="registrar" type="submit" name="btRegister" class="btn btn-primary">
                                                Registrar
                                            </button>
                                        </div>
                                    </div>   
                                </form>
                                    <%                             } else {
                out.println("<script> setInterval(s, 100); function s () {swal({title: 'Inicie Sesion',text: 'Inicie sesion para poder acceder.'}); setInterval(login, 3000);}</script>");
                out.println("<script>function login () {location.replace('Login_1.jsp')}</script>");

            }
        %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
