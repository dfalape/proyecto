<%-- 
    Document   : cuadroResumen
    Created on : 04-jul-2017, 9:19:38
    Author     : rober
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no">			
	<link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/styles.css">
        <title>Cuadro Resumen</title>
        <script type="text/javascript" src="js/JScargar.js"> </script>
    </head>
    <body>
        <header class="CResumen">
            <div class="container-fluid">
                <h1>Cuadro Resumen</h1>
            </div>
        </header>
        <div class="container"> 
       <form  name="" method="POST" action="">
           <div class="form-group">
	<label class="control-label col-lg-2" for="código">Código</label>
	<div class="col-lg-10">
	<input class="form-control" type="text" name="txtCodigo" placeholder="Código"></div></div>
	
	<div class="form-group">
	<label class="control-label col-lg-2" for="Nombre">Nombre</label>
	<div class="col-lg-10">
	<input class="form-control" type="text" name="txtNombre" placeholder="Nombre"></div></div>

	<div class="form-group">
	<label class="control-label col-lg-2" for="Fase">Fase</label>
	<div class="col-lg-10">
	<input class="form-control" type="text" name="txtFase" placeholder="Fase" disabled></div></div>

	<div class="form-group">
	<label class="control-label col-lg-3" for="Actividades de Proyecto">Actividades de Proyecto</label>
	<div class="col-lg-9">
	<input class="form-control" type="text" name="txtActividadesProyecto" placeholder="disabled" disabled></div></div>

	<div class="form-group">
	<label class="control-label col-lg-2" for="Competencia">Competencia</label>
	<div class="col-lg-10">
	<input class="form-control" type="text" name="txtCompetencia" placeholder="Competencia" disabled></div></div>

	<div class="form-group">
	<label class="control-label col-lg-3" for="Resultados de Aprendizaje">Resultados de Aprendizaje</label>
	<div class="col-lg-9">
	<input class="form-control" type="text" name="txtRA" placeholder="Resultados de Aprendizaje" disabled></div></div>

	<div class="form-group">
	<label class="control-label col-lg-3" for="Actividades de aprendizaje">Actividades de aprendizaje</label>
	<div class="col-lg-9">
	<input class="form-control" type="text" name="txtAA" placeholder="Actividades de Aprendizaje" disabled></div></div>

	<div class="form-group">
	<label class="control-label col-lg-4" for="Fecha de programación de evento">Fecha de programación de evento</label>
	<div class="col-lg-8">
	<input class="form-control" type="date" name="dateProgramEvento" step="1" min="2000-01-01" max="2050-12-31" value="2050-01-01" disabled></div></div>

	<div class="form-group">
	<label class="control-label col-lg-4" for="Duración de actividad de aprendizaje">Duración de actividad de aprendizaje</label>
	<div class="col-lg-8">
	<input class="form-control" type="number" name="txtDuracionAA" placeholder="Duración de actividad de aprendizaje" disabled></div></div>

	<div class="form-group">
	<label class="control-label col-lg-2" for="criterio de evaluación">Criterio de evaluación</label>
	<div class="col-lg-10">
	<input class="form-control" type="text" name="txtCriterioEvaluacion" placeholder="Criterio de evaluación" disabled></div></div>

	<div class="form-group">
	<label class="control-label col-lg-2" for="Nombre de la Guía">Nombre de la Guía</label>
	<div class="col-lg-10">
	<input class="form-control" type="text" name="txtNameGuia" placeholder="Nombre de la Guía" disabled></div></div>
        <input class="btn btn-prymary" type="submit" name="btInsertar" value="Insertar"> 
	         <input class="btn btn-prymary" type="submit" name="btModificar" value="Modificar"> 
	         <input class="btn btn-prymary" type="submit" name="btInhabilitar" value="Inhabilitar"> 
            <hr>

            <div class="form-group">
	         <label class="control-label col-lg-2" for="Buscar">Buscar: </label>
	         <div class="col-lg-10">
	         <input class="form-control" type="text" name="txtCriterio" placeholder="Buscar:">
	         </div>
	               
	           
	         <label class="control-label col-lg-2" for="Buscar en base a">Buscar en base a: </label>
	         <div class="col-lg-10">
	         <input class="form-control" type="text" name="txtCampo"placeholder="En Base a:">
	         </div>
	    </div> 
         
            <input class="btn btn-prymary" type="submit" name="btFiltrar" value="Filtrar">
            <input class="btn btn-prymary" type="submit" name="btReiniciar" value="Reinciar">
        
       </form>
       </div>   
         <hr>
        
        
        
    </body>
</html>
