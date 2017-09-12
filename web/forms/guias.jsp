<%-- 
    Document   : guias
    Created on : 17-jul-2017, 16:41:16
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
        <title>Guías de aprendizaje</title>
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
                <h1 class="titulo1">Guás de aprendizaje</h1>
            </div>
        	<form action="" id="form-register">
		
                            <div>
				<p>Código guía:</p>
                                <div class="input-group">
				<span class="input-group-addon"><i class="fa fa-code fa-lg"></i></span>
				<input id="mitad"type="text" class="field" placeholder="232320" required autofocus><br/>	
				</div>
                            </div>
                            <div>
				<p>Introducción:</p>
                                <textarea type="text" id="mitad" class="field" placeholder="Example: 9 grado, aptitud ... etc"></textarea><br/>	
                            </div>
                            <div>
				<p>Criterios de evaluación:</p>
                                <textarea type="text" id="mitad" class="field" placeholder="Example: 9 grado, aptitud ... etc"></textarea><br/>	
                            </div>
                            <div>
				<p>Código de Tematicas:</p>		
				<div class="input-group">		
				<span class="input-group-addon"><i class="fa fa-align-justify fa-lg"></i></span>
                                        <select id="opciones" id="mitad" class="field" name="">
                                            <option value="">-- Selecione Tematica --</option>
                                            <option value=""> ........ </option>
                                        </select> <br/></div>

                            </div>
			
                        <hr class="linea2">
                            <p class="center-content">
                                <input type="submit" class="btn" id="bpaso2" value="Siguiente">        
                            </p>
                            
                            </form>
        </div>
       </section>
        <section class="paso2">
           <div id="formularios">
            
            <div class="tituloFirst">
                <h1 class="titulo1">Guías de Aprendizaje <small>Paso 2</small></h1>
            </div>
        	<form action="" id="form-register">
                    <div class="titulo2">
                    <h6>Actividades de Guías</h6>
                    </div><br>
                    <div class="columns">
                        <div>
				<p>Código de guía:</p>
                                <div class="input-group">
				<span class="input-group-addon"><i class="fa fa-code fa-lg"></i></span>
				<input type="text" id="mitad" class="field" placeholder="223435454"> <br/>	
				</div>
			</div>
                        <div>
				<p>Nombre Guía:</p>
                                <div class="input-group">
				<span class="input-group-addon"><i class="fa fa-archive fa-lg"></i></span>
				<input type="text" id="mitad" class="field" placeholder="Analizar los requisitos ..."> <br/>	
				</div>
			</div>
                    </div>
                    <div>
				<p>Descripción Guía:</p>
                                <textarea type="text" id="mitad" class="field" placeholder="Example: 9 grado, aptitud ... etc"></textarea><br/>	
                    </div>
                    <div>
				<p>Instrumentos de evalución:</p>
                                <textarea type="text" id="mitad" class="field" placeholder="Example: 9 grado, aptitud ... etc"></textarea><br/>	
                    </div>
                    <div>
				<p>Código de guia:</p>
                                <div class="input-group">
				<span class="input-group-addon"><i class="fa fa-user fa-lg"></i></span>
				<input type="text" id="mitad" class="field" placeholder="" disabled> <br/>	
				</div>
                    </div>
                    <hr class="linea2">
                         <div class="titulo2">
                             <h6>Material</h6>
                         </div><br> 
                         <div class="columns">
                        <div>
				<p>Código de Material:</p>
                                <div class="input-group">
				<span class="input-group-addon"><i class="fa fa-code fa-lg"></i></span>
				<input type="text" id="mitad" class="field" placeholder="223435454"> <br/>	
				</div>
			</div>
                        <div>
				<p>Nombre Material:</p>
                                <div class="input-group">
				<span class="input-group-addon"><i class="fa fa-archive fa-lg"></i></span>
				<input type="text" id="mitad" class="field" placeholder="Analizar los requisitos ..."> <br/>	
				</div>
			</div>
                    </div>
                    <div>
				<p>Descripción Material:</p>
                                <textarea type="text" id="mitad" class="field" placeholder="Example: 9 grado, aptitud ... etc"></textarea><br/>	
                    </div>
                    <div>
				<p>Vinculo:</p>
                                <textarea type="text" id="mitad" class="field" placeholder="Example: 9 grado, aptitud ... etc"></textarea><br/>	
                    </div>
                    <div>
				<p>Código actividad de guía:</p>
                                <div class="input-group">
				<span class="input-group-addon"><i class="fa fa-clock-o fa-lg"></i></span>
                                <input type="text" class="field" placeholder="" disabled> <br/>	
				</div>
                    </div>
                         
                         <hr class="linea2">
                         <div class="columns">
                             <div>
                                 <input type="submit" class="btn" id="bpaso1" value="Atras">    
                             </div>
                             <div>
                                 <input type="submit" class="btn" value="Insertar">
                             </div>
                             
                         </div>
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
