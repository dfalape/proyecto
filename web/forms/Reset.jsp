<%-- 
    Document   : Reset
    Created on : 01-jul-2017, 16:50:12
    Author     : FERGO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">		
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/reset.css">
        <link rel="stylesheet" href="../css/font-awesome.min.css">
        <title>Reset</title>
    </head>
    <body>
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
                            GAPAI
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
                            <li><a id="texto" href="Register.jsp">Register</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <div class="panel panel-default">
                        <div class="panel-heading">Restablecer contraseña</div>
                        <div class="panel-body">

                            <form class="form-horizontal" role="form" method="POST" action="../ServletEmployee">
                                <input type="hidden" name="_token" value="vvgYZEqmOklFdCshkHtKzrZ3ssJVcEynGB6nY42z">

                                <div class="form-group">
                                    <label for="email" class="col-md-4 control-label">E-Mail</label>

                                    <div class="col-md-6">
                                        <input id="email" type="email" class="form-control" name="email" value="" required>

                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-4">
                                        <button id="reset" name="btEmail" type="submit" class="btn btn-primary">
                                           Enviar enlace de recuperación
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
