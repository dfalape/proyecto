<%-- 
    Document   : Profile
    Created on : 01-jul-2017, 18:53:19
    Author     : FERGO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">		
	<link rel="stylesheet" href="../css/bootstrap.min.css">
	<link rel="stylesheet" href="../css/font-awesome.min.css">
        <link rel="stylesheet" href="../css/reset.css">
        <link rel="stylesheet" type="text/css" href="../css/sweetalert.css">
        
        <script type="text/javascript" src="../js/sweetalert.min.js"></script>
        <title>Profile</title>
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
        
        
        
<section>        
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Profile</div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form" method="POST" action="Home.jsp">
                        <input type="hidden" name="_token" value="vvgYZEqmOklFdCshkHtKzrZ3ssJVcEynGB6nY42z">
                        <input type="hidden" name="id">
                        
                        

                        
                        <div class="form-group">
                            <label for="email" class="col-md-4 control-label">Perfil</label>
                            <div class="col-md-6">
                               
                                <textarea id="email" type="textarea" class="form-control" name="email" value=""></textarea>
                            </div>
                        </div>


                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button id="btProfile" type="submit" class="btn btn-primary">
                                    Register
                                </button>
                                <a id="omitir" href="Home.jsp">Omitir</a>
                            </div>
                        </div>   
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
   </div>
   </div>
</section>
    </body>
</html>
