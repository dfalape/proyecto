<%@page import="models.Person"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no">			
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/home.css">
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


    %>


    <nav id="nav">                          
        <ul id="Etiquetas">
            <li><a id="etiLi" href="#"><span class="fa fa-bell-o fa lg"></span>  <%= name2 + " " + lastName2%> </a></li>
        </ul>
    </nav>

    <input id="txtId" type="hidden" value="<%= usu%>">

    <aside>
        <%!
            Iterator itt2 = null;
            Person p2p;
        %>

        <jsp:useBean id="objj2" class="controllers.PersonController" scope="page">

        </jsp:useBean>
        <%
            try {
                p2p = new Person();
                p2p.setCode(Long.parseLong(usu));
                objj2.cosnultRole(p2p);

                itt2 = objj2.getEmployeeList().iterator();

        %>
        <select name="txtIdCD"  class="form-control">
            <%            while (itt2.hasNext()) {
                    p2p = (Person) itt2.next();
            %>
            <option value="<%= p2p.getIdRole().getName()%>"><%=p2p.getIdRole().getName()%></option>
            <%

                }
            %>
        </select>
        <%
            } catch (Exception e) {
                e.printStackTrace();
            }

        %>
        <hr class="linea3">
        <div class="Acording">
            <ul id="accordion" class="accordion">
                <li>
                    <div id="0a" class="link"><i class="fa fa-user-o fa fa"></i>Usuario <i class="fa fa-chevron-down fa fa"></i></div>
                    <ul id="submenu" class="submenu">	
                        <li class="mdf"><a  id="a" >Modificar Datos</a></li>
                        <li class="mdfPass"><a id="a" href="../forms/ResetPassword.jsp">Cambiar contraseña</a></li>
                    </ul>
                </li>

                <li>
                    <div id="1a" class="link"><i class="fa fa-archive fa fa"></i>Procesos<i class="fa fa-chevron-down fa fa"></i></div>
                    <ul class="submenu">	
                        <li><a id="a" href="../forms/ListDC.jsp">Diseño curricular</a></li>
                        <li><a id="a" href="../forms/ListFormativeP.jsp">Proyecto Formativo</a></li>
                        <li><a id="a" href="../forms/ListPP.jsp">Planeación Pedagógica</a></li>
                        <li><a id="a" href="cronogramaG.jsp">Cronograma Gantt</a></li>
                        <li><a id="a" href="guias.jsp">Gestionar Guía</a></li>
                        <li><a id="a" href="#">Generar cuadro resumen</a></li>
                    </ul>
                </li>

                <li>
                    <div id="2a" class="link"><i class="fa fa-paint-brush fa fa"></i>Usuarios<i class="fa fa-chevron-down fa fa"></i></div>
                    <ul class="submenu">	
                        <li><a id="a" href="Roles.jsp">Roles y tareas</a></li>
                        <li><a id="a" href="ListPerson.jsp">Usuarios</a></li>
                        <li><a id="a" href="">Diseño responsive sub-munu</a></li>
                        <li><a id="a" href="">Diseño responsive sub-munu</a></li>
                        <li><a id="a" href="">Diseño responsive sub-munu</a></li>
                    </ul>
                </li>

                <li>
                    <div id="3a" class="link"><i class="fa fa-power-off fa fa"></i>Sesión <i class="fa fa-chevron-down fa fa"></i></div>
                    <ul class="submenu">
                        <li><a id="a"
                               <%                               out.println("href='../forms/Login_1.jsp?cerrar=true'");
                               %>
                               >cerrar sesión</a></li>


                    </ul>
                </li>
            </ul>
        </div>
    </aside>

    <%                             } else {
            out.println("<script> setInterval(s, 100); function s () {swal({title: 'Inicie Sesion',text: 'Inicie sesion para poder acceder.'}); setInterval(login, 3000);}</script>");
            out.println("<script>function login () {location.replace('Login_1.jsp')}</script>");

        }
    %>

    <script src="../js/jquery.js"></script>
    <script src="../js/acordion.js"></script>
