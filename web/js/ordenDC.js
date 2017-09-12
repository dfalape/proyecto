var paso1 = $('#bpaso1');
var paso2 = $('#bpaso2');
var form1 = $('.paso1');
var form2 = $('.paso2');

  paso1.focusin(function(){
        form1.css('display', 'block');
	form2.css('display', 'none');     
});
paso2.focusin(function(){		
	form1.css('display', 'none');
	form2.css('display', 'block'); 
        
});







