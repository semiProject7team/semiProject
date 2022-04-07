$('#sizeSelectOption').change(function(){
		$.ajax({
			type:'get',
			url:'sizeCheckInAddDelete.do',
			data:{goodsSize:$('#sizeSelectOption').val(),shopNo:$('#shopNo').val(),goodsNo:$('#goodsNo').val()},
			contentType: "application/x-www-form-urlencoded; charset=UTF-8",
			success:function(result){
				$('#sizeCheck').text(result)
			}
		})
	})
	
	$('#insertGoodsSize').click(function(event){
		if($('#sizeCheck').text() != '' || $('#sizeSelectOption').val() =='추가 할 사이즈를 선택하세요.' ){
			event.preventDefault()	
		}
	})