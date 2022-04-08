$('#goodsSize').keyup(function(){
			
			$.ajax({	
				type:'get',
				url:'checkGoodsSize.do',
				data:{goodsSize:$(this).val()},
				contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				success:function(result){
					$('#goodsSizeCheck').text(result)
				}
			})
		})
		
		$('#goodsSizeInsert').click(function(event){
			if($('#goodsSizeCheck').text() != ''){
				event.preventDefault()	
			}	
		}) 