$('#searchRecords').keyup(function(){
			$.ajax({
				type:'get',
				url:'goodsSearch.do',
				data:{goodsSearch:$('#searchRecords').val()},
				contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				success:function(result){
					if($('#searchRecords').val() != null){
						$('#tbody').empty()
						$('#tbody').html(result)
					}
				}
			})
	})
	
	$('#selectoption').change(function(){
		var select = ''
			if($(this).val()=='상품수량 내림차순'){
				select = 'to_number(goods_cnt) desc' 
			}else if($(this).val()=='상품수량 오름차순'){ 
				select = 'to_number(goods_cnt)' 
			}else if($(this).val()=='상품가격 내림차순'){
				select = 'to_number(goods_price) desc'
			}else if($(this).val()=='상품가격 오름차순'){
				select = 'to_number(goods_price)'
			}else if($(this).val()=='상품조회수 내림차순'){
				select = 'to_number(goods_times) desc'
			}else if($(this).val()=='상품조회수 오름차순'){
				select = 'to_number(goods_times)'
			}else if($(this).val()=='상품등록날짜 내림차순'){
				select = 'goods_date desc'
			}else if($(this).val()=='상품등록날짜 오름차순'){
				select = 'goods_date'
			}
			
			$.ajax({	
				type:'get',
				url:'goodsSelectOption.do',
				data:{goodsName:select},
				contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				success:function(result){
					$('#tbody').empty()
					$('#tbody').html(result)
				}
			})
		})