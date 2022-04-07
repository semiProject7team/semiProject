$('#deleteGoodsSize').click(function(event){
		if(!confirm('용기사이즈삭제하시면 용기매장에 있는 사이즈 다 삭제하겠습니다.삭제하시겠습니까?')){
			event.preventDefault()	
		}
	})