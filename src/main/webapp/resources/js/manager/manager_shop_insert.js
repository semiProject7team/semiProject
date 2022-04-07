	$('#locSn').keyup(function(){
			
			$.ajax({	
				type:'get',
				url:'checkLocSn.do',
				data:{locSn:$(this).val()},
				contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				success:function(result){
					$('#locSnCheck').text(result)
				}
			})
		})
		
		$('#insertShop').click(function(event){
			if($('#locSnCheck').text() != ''){
				event.preventDefault()	
			}
		})