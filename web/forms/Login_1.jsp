<%-- 
    Document   : Login
    Created on : 01-jul-2017, 15:35:36
    Author     : FERGO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">		
        <link rel="stylesheet" href="../css/login1.css">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/font-awesome.min.css">

        <title>Iniciar sesión</title>
    </head>
    <body>
        <%
            HttpSession sessionU = request.getSession();
            if(sessionU.getAttribute("session2") != null)
            {
                
               response.sendRedirect("Home.jsp");
            }
        %>
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
                            <li><a id="texto" href="Login_1.jsp">Login</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>

        <section class="container"> 
            <form name="formLogin" action="" method="POST">
                <div class="row">
                    <div class="titulo">
                        <h6>Iniciar sesión</h6>
                    </div>
                </div>

                <p>Correo:</p>

                <div class="input-group">
                    <span class="input-group-addon ">
                        <i class="fa fa-user fa-lg"></i></span>
                    <input type="email" id="field" class="form-control" name="txtEmail" placeholder="example@correo.com" required autofocus> <br/>	

                </div>


                <p>Contraseña:</p>
                <div class="input-group">
                    <span class="input-group-addon ">			
                        <i class="fa fa-lock fa-lg"></i></span>
                    <input type="password" id="field" class="form-control " name="txtPassword" placeholder="********" required> <br/>
                </div>


                <div class="row">

                    <a id="forgot" class="btn btn-link" href="Reset.jsp">
                        <i class="fa fa-key fa-lg"></i>
                        Forgot Your Password?
                    </a>       
                </div>





                <p class="center-content ">
                    <input type="submit" formaction="../LoginServlet" id="btLogin" class="btn btn-success" name="btLongin" value="INICIAR SESIÓN">
                </p>


            </form>   
            
        </section>

    </body>
</html>
