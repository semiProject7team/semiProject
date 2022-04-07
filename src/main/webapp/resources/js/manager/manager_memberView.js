$('#memberDelete').click(function(event){
			if(!confirm('회원정보삭제하시면 장바구니,주문서 에있는 회원정보 다 삭제 하겠습니다.삭제하시겠습니까?')){
				event.preventDefault()	
			}
		})