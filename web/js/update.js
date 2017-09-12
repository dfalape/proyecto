//proceso para modificar usuario
var modificar = $('.mdf');
var formMDF = $('#updateDatos');
var formMdfQuitar = $('.UpdateDatos');

//proceso para cambiar password
var modificarPass = $('.mdfPass');
var formMdfPassword = $('#ResetPasswordAdd');
var formQuitarPass = $('.ResetPasswordQ');

//funcion de modificar datos
  modificar.click(function(){
        formMDF.css('display', 'block');
        formMdfQuitar.removeClass('.UpdateDatos');
        formMdfPassword.css('display', 'none');
});

//funcion de modificar contraseña
modificarPass.click(function(){
        formMdfPassword.css('display', 'block');
        formQuitarPass.removeClass('.ResetPasswordQ');
        formMDF.css('display', 'none');
});




