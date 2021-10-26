  $(function(){
	    $('.envelope').click(function(){
	    	if (!$('.envelope').hasClass('open')){
	    	(async () => {
	    	    const { value: getName } = await Swal.fire({
	    	        title: '비밀번호를 입력하세요.',
	    	        text: 'Hint : 7자리',
	    	        input: 'text',
	    	        inputPlaceholder: '비밀번호 입력..'
	    	    })
	    	    if ('1029486'=== getName) { 
	    	         var list = document.querySelector("#lettertext");
	    	         list.innerHTML += "<p>유미에게</p>";
	    	         list.innerHTML += "<p>유미야 생일 축하해🎉<br>" +
	    	         		"오늘은 유미가 세상에서 제일 행복한 사람이었으면 해서 내 생일보다 더 들뜬 마음으로 준비 한 것 같아<br>" +
	    	         		"오늘 나와 함께 있던 시간이 그 행복에 조금이라도 보탬이 됐으면 나도 행복할 것 같아<br>" +
	    	         		"남은 올해 유미가 하는일 모두 잘되길 기도할게<br>" +
	    	         		"태어나줘서 고맙고 내 옆에 있어줘서 고마워<br>" +
	    	         		"앞으로도 내가 매년 축하해 줄게~♥<br>" +
	    	         		"</p>";
	    	         list.innerHTML += "<p align='right'>- 2021.10.30 유미 끝사랑 -</p>";
	    	    	$(this).removeClass('new').addClass('open'); 
	    	    	
		    		} else { 
		    			Swal.fire(`비밀번호가 틀렸습니다.`)
			    		return false; 
		    		}
	    	})()
// 	    	if (!$('.envelope').hasClass('open')){
// 	    		var result = prompt('비밀번호를 입력하세요');
// 	    		if('1029486'===result) { $(this).removeClass('new').addClass('open'); 
// 	    		} else { 
// 		    		alert('삐-익')
// 		    		return false; 
// 	    		}
// 	 	 	}
	    	}
	    });
	});