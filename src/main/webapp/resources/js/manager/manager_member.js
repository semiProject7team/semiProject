		
		$('#searchRecords').keyup(function(){
			$.ajax({
				type:'get',
				url:'memberSearch.do',
				data:{memberSearch:$('#searchRecords').val()},
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
			var select = ''    //선택한내용대로 database sql 문장 order by 뒤에만 
			//ajax로 바꿉니다
				if($(this).val()=='이름 내림차순'){
					select = 'member_name desc' 
				}else if($(this).val()=='이름 오름차순'){
					select = 'member_name' 
				}else if($(this).val()=='남자 먼저보기'){
					select = 'member_gender'
				}else if($(this).val()=='여자 먼저보기'){
					select = 'member_gender desc'
				}else if($(this).val()=='우편번호 내림차순'){
					select = 'member_addr3 desc'
				}else if($(this).val()=='우편번호 오름차순'){
					select = 'member_addr3'
				}else if($(this).val()=='구매총액 내림차순'){
					select = 'to_number(member_order) desc' //문자열 비교 할때 to_number사용 
				}else if($(this).val()=='구매총액 오름차순'){
					select = 'to_number(member_order)'
				}else if($(this).val()=='회원등급 내림차순'){
					select = 'member_grade desc'
				}else if($(this).val()=='회원등급 오름차순'){
					select = 'member_grade'
				}
				
				$.ajax({
					
					type:'get',
					url:'memberSelectOption.do',
					data:{memberOrder:select},
					contentType: "application/x-www-form-urlencoded; charset=UTF-8",
					success:function(result){
						$('#tbody').empty()
						$('#tbody').html(result)
					}
				})
			})