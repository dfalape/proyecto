<%-- 
    Document   : updateData
    Created on : 05-sep-2017, 10:22:57
    Author     : rober
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="../css/nav.css">	
    <link rel="stylesheet" href="../css/styles.css">	
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../css/sweetalert.css">
    <title>Modificar Datos</title>
</head>

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






<section id="updateDatos" class="updateDatos">

    <div id="upEsp" class="panel-heading">Modificar Datos</div>

    <form class="formUp" id="formUpdate" method="POST" >



        <div  class="form-group upEsp">
            <label for="name" class="col-md-2 control-label">Nombre</label>
            <div class="col-md-10">
                <div class="input-group">
                    <span class="input-group-addon "><i class="fa fa-user fa-lg"></i></span>
                    <input id="nameUpdate" type="text" class="form-control" name="name" value="<%= name2%>" required autofocus>
                </div>
            </div>
        </div>

        <div  class="form-group upEsp">
            <label for="name" class="col-md-2 control-label">Apellido</label>
            <div class="col-md-10">
                <div class="input-group">
                    <span class="input-group-addon "><i class="fa fa-address-book fa-lg"></i></span>
                    <input id="lastNameUpdate" type="text" class="form-control" name="lastName" value="<%= lastName2%>" required autofocus>
                </div>
            </div>
        </div>

        <div class="form-group upEsp">
            <label for="name" class="col-md-2 control-label">Teléfono</label>
            <div class="col-md-10">
                <div class="input-group">
                    <span class="input-group-addon "><i class="fa fa-phone fa-lg"></i></span>
                    <input id="phoneUpdate" type="number" class="form-control" name="number" value="<%=number2%>" autofocus>
                </div>
            </div>
        </div>

        <div  class="form-group upEsp">
            <label for="name" class="col-md-2 control-label">Dirección</label>
            <div class="col-md-10">
                <div class="input-group">
                    <span class="input-group-addon "><i class="fa fa-home fa-lg"></i></span>
                    <input id="addressUpdate" type="text" class="form-control" name="address" value="<%=address2%>" autofocus>
                </div>
            </div>
        </div>


        <div class="form-group btUp">
            <div class="col-md-6 col-md-offset-4">
                <button id="btUpdate"  type="submit" name="btUpdate2" class="btn btn-primary">
                    Update
                </button>
            </div>
        </div>

    </form>
    <script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            ///ajax modificación de datos
            $('#formUpdate').on('submit', function (e) {
                var name = $('#nameUpdate').val();
                var lastName = $('#lastNameUpdate').val();
                var phone = $('#phoneUpdate').val();
                var address = $('#addressUpdate').val();
                var code = $('#txtId').val();
                var buttonUpdate = $('#btUpdate').val();
                e.preventDefault();
                //metodo AJAX PARA MODIFICAR DATOS

                $.ajax({
                    //variable
                    type: 'POST',
                    url: '../ServletEmployee',
                    data: {nom: name, lastNamenom: lastName, phonenom: phone, addressnom: address, codenom: code, buttonU: buttonUpdate},
                    success: function (result) {
                        if (result == "1") {

                            swal({

                                title: "Vamous GPAI!",
                                text: "Los datos fueron Modificados satisfactoriamente.",
                                imageUrl: "../images/thumbs-up.jpg"
                            });
                        } else {

                            swal({

                                title: "Vamous GPAI!",
                                text: "¡Lo Sentimos! Los Datos NO se modificaron Satifactoriamente.",
                                imageUrl: "../images/error1.png"
                            });
                        }
                    }



                });
            });

        });
    </script>

</section>

<%                             } else {
        out.println("<script> setInterval(s, 100); function s () {swal({title: 'Inicie Sesion',text: 'Inicie sesion para poder acceder.'}); setInterval(login, 3000);}</script>");
        out.println("<script>function login () {location.replace('Login_1.jsp')}</script>");

    }
%>


s