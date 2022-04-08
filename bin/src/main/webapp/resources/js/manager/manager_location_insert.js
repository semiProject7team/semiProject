$('#locName').keyup(function(){
			$.ajax({	
				type:'get',
				url:'checkLocName.do',
				data:{locName:$(this).val()},
				contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				success:function(result){
					$('#locNameCheck').text(result)
				}
			})
		})
		
		$('#locationInsert').click(function(event){
			if($('#locNameCheck').text() != ''){
				event.preventDefault()	
			}	
		}) 