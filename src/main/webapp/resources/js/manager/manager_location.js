$('#searchRecords').keyup(function(){
			$.ajax({
				type:'get',
				url:'locationSearch.do',
				data:{locSearch:$('#searchRecords').val()},
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
			if($(this).val()=='지역이름 내림차순'){
				select = 'loc_name desc' 
			}else if($(this).val()=='지역이름 오름차순'){
				select = 'loc_name' 
			}
			
			$.ajax({	
				type:'get',
				url:'locationSelectOption.do',
				data:{locName:select},
				contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				success:function(result){
					$('#tbody').empty()
					$('#tbody').html(result)
				}
			})
		})