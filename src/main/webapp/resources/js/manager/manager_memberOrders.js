$('#ordersSelectOption').change(function(){
			if($(this).val() == '주문서번호선택하세요'){
				$('.table').html('')
			}else{
				$.ajax({
					type:'get',
					url:'ordersSearch.do',
					data:{orderNo:$(this).val(),memberId:$('#memberId').val()},
					contentType: "application/x-www-form-urlencoded; charset=UTF-8",
					success:function(result){
						
						$('.table').html(result)
					}
				})
			}
			
		})