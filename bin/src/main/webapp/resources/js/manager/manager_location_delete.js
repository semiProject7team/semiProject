$('#deleteLocation').click(function(event){
		if(!confirm('지역삭제하시면 용기매장에 있는 정보 다 삭제하겠습니다.삭제하시겠습니까?')){
			event.preventDefault()	
		}
	})