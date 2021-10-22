  $(function(){
	  if (!$('.envelope').hasClass('open')){
	    $('.envelope').click(function(){
	    	var result = prompt('비밀번호를 입력하세요');
	    	if('1029486'===result) { $(this).removeClass('new').addClass('open'); } 
	    	else { 
	    		alert('삐-익')
	    		return false; 
	    		}
	    });
	  }
	  
	});