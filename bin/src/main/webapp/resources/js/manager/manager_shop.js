$('#searchRecords').keyup(function(){
			$.ajax({
				type:'get',
				url:'shopListSearch.do',
				data:{shopListSearch:$('#searchRecords').val()},
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
			if($(this).val()=='매장영업날짜 내림차순'){
				select = 'shop_date desc' 
			}else if($(this).val()=='매장영업날짜 오름차순'){
				select = 'shop_date' 
			}
			
			$.ajax({	
				type:'get',
				url:'shopListSelectOption.do',
				data:{orderBy:select},
				contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				success:function(result){
					$('#tbody').empty()
					$('#tbody').html(result)
				}
			})
		})