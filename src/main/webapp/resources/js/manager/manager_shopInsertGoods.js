$('#goodsNo').keyup(function(){
				
				$.ajax({	
					type:'get',
					url:'checkGoodsNo.do',
					data:{goodsNo:$(this).val(),shopNo:$('#shopNo').val()},
					contentType: "application/x-www-form-urlencoded; charset=UTF-8",
					success:function(result){
						$('#goodsCheck').text(result)
					}
				})
			})
			
			$('#goodsSize').keyup(function(){
				$.ajax({	
					type:'get',
					url:'checkSizeNo.do',
					data:{goodsSize:$(this).val()},
					contentType: "application/x-www-form-urlencoded; charset=UTF-8",
					success:function(result){
						$('#sizeCheck').text(result)
					}
				})
			})
			
			$('#insertGoodsAndSize').click(function(event){
				if($('#goodsCheck').text() != '' || $('#sizeCheck').text() != ''){
					event.preventDefault()	
				}
			})
		