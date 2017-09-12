

//metodo cargar el code del prpoyecto formativo

function cargarCode (code){
    
    //document.FormEditPF.txtCode.value = code;
    //location.href = "../forms/proyectoFedit.jsp";
    //window.location.replace("../forms/proyectoFedit.jsp?send="+code);
    document.getElementById('send').value = code;
    document.getElementById('FormEditPF').submit();
}

function cargarCodeProyF (code){
    
    document.getElementById('codgProyF').value = code;
    document.getElementById('btSiguientePF').submit();
}
/*
function devolver (){
    var m =getUrlVars()["send"];
    alert(m);
    
}*/

