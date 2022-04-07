$('#imageView').mouseover(function(){
			$('#goodsImage').css('top','300px')
		}).mouseout(function(){
			$('#goodsImage').css('top','-300px')
		})
		
		$('#goodsDelete').click(function(event){
			if(!confirm('상품삭제하시면 장바구니,주문상품,상품후기에있는 상품정보 다 삭제 하겠습니다.삭제하시겠습니까?')){
				event.preventDefault()	
			}
		})
		
		$('#orderBack').click(function(){
			history.go(-1)
		})