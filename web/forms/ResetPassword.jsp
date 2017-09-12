<%-- 
    Document   : ResetPassword
    Created on : 01-jul-2017, 19:26:49
    Author     : FERGO
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">		
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/reset.css">
        <link rel="stylesheet" href="../css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="../css/sweetalert.css">

        <script type="text/javascript" src="../js/sweetalert.min.js"></script>

        <title>ResetPassword</title>
    </head>
    
        
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="panel panel-default">
                            <div class="panel-heading">Restablecer contraseña</div>
                            <div class="panel-body">
                                <form id="formPass" class="form-horizontal" role="form" method="POST">
                                    <input type="hidden" name="_token" value="vvgYZEqmOklFdCshkHtKzrZ3ssJVcEynGB6nY42z">

                                    <div class="form-group">
                                        <label for="password" class="col-md-4 control-label">Password</label>
                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <span class="input-group-addon "><i class="fa fa-key fa-lg"></i></span>
                                                <input id="password" type="password" class="form-control" name="password" required>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="password-confirm" class="col-md-4 control-label">Confirm Password</label>
                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <span class="input-group-addon "><i class="fa fa-key fa-lg"></i></span>
                                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-md-6 col-md-offset-4">
                                            <button id="resetp" name="btReset" type="submit" class="btn btn-primary">
                                                Reset
                                            </button>
                                        </div>
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

    

    <script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            
            //ajax modificación de contraseña.

            $('#formPass').on('submit', function (e) {

                var password = $('#password').val();
                var password2 = $('#password-confirm').val();
                var code = $('#txtId').val();
                var buttonChange = $('#resetp').val();
                if (password == password2)
                {
                    e.preventDefault();
                    $.ajax({
                        type: 'POST',
                        url: '../ServletEmployee',
                        data: {pass: password, codem: code, changePass: buttonChange},
                        success: function (result) {
                            if (result == "1")
                            {
                                alert("contraseña modificada");
                            }
                        }

                    });
                } else
                {
                    alert("las contraseñas no coinciden");
                }


            });



        });
    </script>

