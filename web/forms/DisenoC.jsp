<%-- 
    Document   : Dise�oC
    Created on : 05-jul-2017, 17:37:14
    Author     : rober
--%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        	
        <link rel="stylesheet" href="../css/styles.css">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="../css/sweetalert.css">

        <script type="text/javascript" src="../js/sweetalert.min.js"></script>
        <title>Dise�o Curricular</title>
        <script type="text/javascript" src="js/JScargar.js"></script>
    </head>


    <div id="formularios">

        <div class="tituloFirst">
            <h1 class="titulo1">Dise�o curricular</h1>
        </div>
        <form class="form" method="post" action="" id="">


            <div class="columns">
                <div>
                    <p>C�digo de Dise�o:</p>
                    <div class="input-group">
                        <span class="input-group-addon"><i id="k" class="fa fa-code fa-lg"></i></span>
                        <input id="mitad" type="text" name="txtCode" class="field" placeholder="232320"><br/>	
                    </div>
                </div>
                <div>
                    <p>Denominaci�n del Programa:</p>		
                    <div class="input-group">		
                        <span class="input-group-addon"><i class="fa fa-bandcamp fa-lg"></i></span>
                        <input id="mitad" type="text" name="txtName" class="field" placeholder="Programaci�n de Software"> <br/>
                    </div>
                </div>
            </div>

            <div class="columns">
                <div>
                    <p>Versi�n:</p>
                    <div class="input-group">
                        <span class="input-group-addon"><i id="k" class="fa fa-user-circle-o fa-lg"></i></span>
                        <input id="mitad"  type="text" name="txtVersion" class="field" placeholder="200"> <br/>	
                    </div>
                </div>

            </div><br>
            <hr class="linea2">
            <div class="columns">
                <div class="titulo">
                    <h6>Vigencia del Programa</h6>
                </div>
                <div class="columns">
                    <div>
                        <p>Fecha Inicio:</p>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-calendar fa-lg"></i></span>
                            <input id="mitad" class="field" type="date" name="txtStartDate" step="1" min="2000-01-01" max="2050-12-31" value="2050-01-01"> <br/>	
                        </div>
                    </div>
                    <div>
                        <p>Fecha Fin:</p>		
                        <div class="input-group">		
                            <span class="input-group-addon"><i class="fa fa-calendar fa-lg"></i></span>
                            <input id="mitad" class="field" type="text" name="txtEnndingDate"> <br/>
                        </div>
                    </div>
                </div>
            </div>
            <hr class="linea2">
            <div class="titulo2">
                <h6>Duraci�n M�xima estimada de Aprendizaje</h6>
            </div>
            <div class="columns">
                <div>

                    <p>Duraci�n Lectiva:</p>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="fa fa-calendar-check-o fa-lg"></i></span>
                        <input id="chao" type="number" name="txtLectivaDuration" class="field"  placeholder="6 meses"> <br/>
                    </div>

                    <p>Duraci�n Pr�ctica:</p>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="fa fa-calendar-check-o fa-lg"></i></span>
                        <input id="chao" type="number" name="txtPracticeDuration" class="field"  placeholder="6 meses"> <br/>
                    </div>
                </div>
                <div class="centro">
                    <div>
                        <p>Duraci�n Total</p>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="fa fa-calculator fa-lg"></i></span>
                            <input id="mitadM" type="number" class="field"  placeholder="12 meses" disabled> <br/>
                        </div>
                    </div>
                </div>
            </div>
            <hr class="linea2">

            <div>
                <p>Nivel de formaci�n:</p>
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-code fa-lg"></i></span>
                    <select name="txtLevelT">
                        <option value="TECNICO">T�cnico</option>
                        <option value="TECNOLOGO">Tecn�logo</option>
                    </select>	
                </div>
            </div>

            <div>
                <p>Justificaci�n:</p>		


                <textarea type="text" name="txtJustify" class="field" placeholder="Contenido de la Justificaci�n ......"></textarea><br/>

            </div>
            <div class="columns">
                <div>
                    <p>Requisitos de ingreso:</p>
                    <textarea type="text" name="txtRequerimentsI" id="mitad" class="field" placeholder="Example: 9 grado, aptitud ... etc"></textarea><br/>	
                </div>
                <div>
                    <p>Descripci�n:</p>            
                    <textarea type="text" name="txtDescription" id="mitad" class="field" placeholder="Example: desarrolla aplicativos ... etc" ></textarea><br/>	
                </div>
            </div>
            <hr class="linea2">
            <div class="titulo2">
                <h6>Perfil T�cnico del Instructor</h6>
            </div><br>
            <div class="columns">
                <div>
                    <p>Requisitos Acad�micos:</p>

                    <textarea type="text" name="txtRequerimentsIns" id="mitad" class="field" placeholder="Example: Estudios universitarios... etc"></textarea><br/>	

                </div> 
                <div>
                    <p>Experiencia Laboral y/o especializaci�n en:</p>
                    <textarea type="text" name="txtWorkIns" id="mitad" class="field" placeholder="Example: veinticuatro meses de experie.. etc"></textarea><br/>	
                </div>
            </div>
            <div class="columns">
                <div>
                    <p>Competencias M�nimas:</p>
                    <textarea type="text" name="txtCompeteceIns" id="mitad" class="field" placeholder="Example: Buen nivel de lectura.. etc"></textarea><br/>
                </div>
                <div>
                    <p>Estrategias Metodol�gicas:</p>
                    <textarea type="text" name="txtStragedyIns"  id="mitad" class="field" placeholder="Example: Garantizar la calidad de .. etc" required=""></textarea><br/>	
                </div>
            </div>
            <hr class="linea2">
            <p class="center-content">
                <input type="submit" formaction="../ServletCurricularDesign" class="btn"  name="btSendDC" value="Siguiente">
            </p>

        </form>
    </div>

    <script src="../js/jquery-3.2.1.min.js"></script>

    <script type="text/javascript">
        

    </script>
    <script src="../js/jquery.js"></script>
    <script src="../js/menu.js"></script>
    <script src="../js/busqueda.js"></script>
    <%--                <script src="../js/ordenDC.js"></script>--%>

