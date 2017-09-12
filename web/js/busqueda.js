var menu = $('.menu_bar');
var barra_busqueda = $('.search_bar');
var bar = $ ('#bar');
var icono = $('#lupa');

barra_busqueda.focusin(function(){
	if(barra_busqueda == (barra_busqueda.css('width', '15%'))){
		barra_busqueda.css('width', '20%');
	}
	else {
		barra_busqueda.css('width', '100%');
	}
	
	menu.css('width', '100%');
	icono.css('color', '#000');
	bar.css('color', '#000');
});

barra_busqueda.focusout(function(){
	barra_busqueda.css('width', '15%');
	menu.css('width', '100%');
	icono.css('color', '#fff');
	bar.css('color', '#fff');
});