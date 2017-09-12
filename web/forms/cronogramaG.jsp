<%-- 
    Document   : cronogramaG
    Created on : 14-jul-2017, 7:44:06
    Author     : rober
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="../css/nav.css">	
        <link rel="stylesheet" href="../css/styles.css">	
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/font-awesome.min.css">
        <title>Gantt</title>
    </head>
    <body>
        <header>
            <div class="menu_bar">
                <a href="#" class="bt-menu"><span class="fa fa-list fa lg"></span>Menu</a>
            </div>
            <nav>
                <ul>
                    <li><a href="Home.jsp"><span class="fa fa-home fa lg"></span>Inicio</a></li>
                    <li><a href="#"><span class="fa fa-vcard-o fa lg"></span>Servicios</a></li>
                    <li><a href="#"><span class="fa fa-hotel fa lg"></span>TRabajos</a></li>
                    <li><a href="#"><span class="fa fa-heart fa lg"></span>Pproyectos</a></li>
                    <li><a href="#"><span class="fa fa-headphones fa lg"></span>Contactos</a></li>
                    <div class="search_bar">
                        <a href="#" id="lupa" class="fa fa-search fa lg"></a>
                        <input type="text" id="bar">
                    </div>
                </ul>

            </nav>
        </header><br><br><br>

        <section class="paso1">
            <div id="formularios">

                <div class="tituloFirst">
                    <h1 class="titulo1">Cronograma Gantt</h1>
                </div>
                <form action="" id="form-register">


                    <div class="columns">
                        <div>
                            <p>Register:</p>
                            <div class="input-group">
                                <span class="input-group-addon"><i id="k" class="fa fa-code fa-lg"></i></span>
                                <input id="mitad"type="text" class="field" placeholder="232320" required autofocus><br/>	
                            </div>
                        </div>
                        <div>
                            <p>Código:</p>		
                            <div class="input-group">		
                                <span class="input-group-addon"><i class="fa fa-bandcamp fa-lg"></i></span>
                                <input id="mitad"type="text" class="field" placeholder="Programación de Software" required autofocus> <br/>
                            </div>
                        </div>
                    </div>
                    <hr class="linea2">
                    <div class="titulo2">
                        <h6>Trimestre</h6>
                    </div><br>
                    <div>
                        <p>Nombre:</p>
                        <div class="input-group">
                            <span class="input-group-addon"><i id="k" class="fa fa-code fa-lg"></i></span>
                            <input id="mitad"type="text" class="field" placeholder="232320" required autofocus><br/>	
                        </div>
                    </div>

                    <hr class="linea2">
                    <div class="titulo2">
                        <h6>Resultado de aprendizaje</h6>
                    </div><br>
                    <div>
                        <p>R.A.P:</p>		
                        <div class="input-group">		
                            <span class="input-group-addon"><i class="fa fa-align-justify fa-lg"></i></span>
                            <select id="opciones" id="mitad" class="field" name="">
                                <option value="">.........</option>
                                <option value="">..........</option>
                            </select> <br/></div>

                    </div>
                    <hr class="linea2">
                    <div class="titulo2">
                        <h6>Temática</h6>
                    </div><br>
                    <div>
                        <p>Nombre:</p>		
                        <div class="input-group">		
                            <span class="input-group-addon"><i class="fa fa-bandcamp fa-lg"></i></span>
                            <input id="mitad"type="text" class="field" placeholder="Programación de Software" required autofocus> <br/>
                        </div>
                    </div>
                    <div class="columns">
                        <div>
                            <p>Fecha Inicio:</p>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-calendar fa-lg"></i></span>
                                <input id="mitad" class="field" type="date" name="dateInicioG" step="1" min="2000-01-01" max="2050-12-31" value="2050-01-01"> <br/>	
                            </div>
                        </div>
                        <div>
                            <p>Fecha Fin:</p>		
                            <div class="input-group">		
                                <span class="input-group-addon"><i class="fa fa-calendar fa-lg"></i></span>
                                <input id="mitad" class="field" type="date" name="dateFinG" step="1" min="2000-01-01" max="2050-12-31" value="2050-01-01"> <br/>
                            </div>
                        </div>
                    </div>
                    <hr class="linea2">
                    <p class="center-content">
                        <input type="submit" class="btn"  value="Send">         
                    </p>

                </form>
            </div>
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
                        <img class="img" src="../images/sena.png">
                    </div>
                </div>   
            </div>
            <footer>






                <script src="../js/jquery.js"></script>
                <script src="../js/menu.js"></script>
                <script src="../js/busqueda.js"></script>
                <script src="../js/ordenDC.js"></script>
                </body>
                </html>
