$('#searchRecords').keyup(function(){
		$.ajax({
			type:'get',
			url:'sizeSearch.do',
			data:{sizeSearch:$('#searchRecords').val()},
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
			if($(this).val()=='용기사이즈 내림차순'){
				select = 'goods_size desc' 
			}else if($(this).val()=='용기사이즈 오름차순'){
				select = 'goods_size' 
			}
			
			$.ajax({	
				type:'get',
				url:'sizeSelectOption.do',
				data:{goodsSize:select},
				contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				success:function(result){
					$('#tbody').empty()
					$('#tbody').html(result)
				}
			})
		})