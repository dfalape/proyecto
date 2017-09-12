<%-- 
    Document   : index
    Created on : 20-jul-2017, 19:44:10
    Author     : rober
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="css/nav.css">	
        <link rel="stylesheet" href="css/principal.css">	
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <title>GPAI</title>
    </head>
    <body>
        <header>
            <div class="container">
                <h1 class="tit">GPAI</h1>
                <img class="img2" src="images/ministerioT.png">
                <img class="imgs" src="images/senaN.png">
            </div>
        </header>
        <div class="limpiar"></div>
        <div id="app">
            <nav id="navegacion" class="navbar navbar-default navbar-static-top">
                <div  class="container">
                    <div class="navbar-header">

                        <!-- Collapsed Hamburger -->
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse">
                            <span class="sr-only">Toggle Navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                        <!-- Branding Image -->
                        <a  id="texto" class="navbar-brand" href="../index.jsp">
                            GPAI
                        </a>
                    </div>

                    <div class="collapse navbar-collapse" id="app-navbar-collapse">
                        <!-- Left Side Of Navbar -->
                        <ul class="nav navbar-nav">
                        </ul>

                        <!-- Right Side Of Navbar -->
                        <ul class="nav navbar-nav navbar-right">
                            <!-- Authentication Links -->
                            <li><a id="texto" href="forms/Login_1.jsp">Login</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div> 

        <section>
            <a class="twitter-timeline"  href="https://twitter.com/hashtag/sena" data-widget-id="885842871370354690">Tweets sobre #sena</a>
            <script>!function(d, s, id){var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location)?'http':'https'; if (!d.getElementById(id)){js = d.createElement(s); js.id = id; js.src = p + "://platform.twitter.com/widgets.js"; fjs.parentNode.insertBefore(js, fjs); }}(document, "script", "twitter-wjs");</script>


        </section>

        <footer class="footer">    
            <div class="container" >
                <div class="col-md-3">
                    <h2 class="title">Formularios</h2>
                    <ul>
                        <li><a href="">Diseño Curricular</a></li>
                        <li><a href="">Proyecto Formativo</a></li>
                        <li><a href="">Planeación pedagógica</a></li>
                        <li><a href="">Cronograma Gantt</a></li>
                        <li><a href="">Cuadro Resumen</a></li>  
                    </ul>

                </div>
                <div class="col-md-3">
                    <h2 class="title">Archivos</h2>
                    <ul>
                        <li class="liF"><a href="">Diseño Curricular</a></li>
                        <li class="liF"><a href="">Proyecto Formativo</a></li>
                        <li class="liF"><a href="">Planeación pedagógica</a></li>
                        <li class="liF"><a href="">Cronograma Gantt</a></li>
                        <li class="liF"><a href="">Cuadro Resumen</a></li>  
                    </ul>

                </div>
                <div class="col-md-3">
                    <p class="copy" > Proceso Académico Instructores &copy; 2017 </p>
                    <div class="botonF">
                        <button class="botonpapu" >Ver Mas</button>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="imagen">
                        <img class="img" src="images/sena.png">
                    </div>
                </div>   
            </div>
            <%
                
                if(request.getParameter("cerrar")!=null)
                {
                    session.invalidate();
                }
                
                %>
        </footer>   
    </body>
</html>
