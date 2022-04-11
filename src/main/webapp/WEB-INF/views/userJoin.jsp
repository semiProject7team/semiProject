<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl 사용 -->    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 회원가입 </title>

<!-- CSS 설정-->
<style type="text/css">

	html { height: 100%; } 
	body { height: 100%; 
			margin: 0; 
			font-family: Arial, Helvetica, sans-serif; 
			display: grid; 
			justify-items: center; 
			align-items: center; 
			background-color: #505050; }
	#main-holder { width: 50%; 
					height: 80%; 
					display: grid; 
					justify-items: center; 
					align-items: center; 
					background-color: white; 
					border-radius: 7px; 
					box-shadow: 0px 0px 5px 2px black; } 
	
	#userinput { align-self: flex-start; 
				display: grid; 
				justify-items: center; 
				align-items: center; } 
	
	#confirm, #reset { width: 100%; 
						padding: 7px;
						margin : 2px;
						border: none; 
						border-radius: 5px; 
						color: white; 
						font-weight: bold; 
						background-color: #59ab6e; 
						cursor: pointer; 
						outline: none;
						display : block; }

	table tr {
	  border-collapse: separate;
	  border-spacing: 1px;
	  text-align: left;
	  line-height: 1.5;
	  border-top: 1px solid #ccc;
	  margin: 20px 10px;	}
	  
	table th {
	  width: 150px;
	  padding: 10px;
	  font-weight: bold;
	  vertical-align: top;
	  border-bottom: 1px solid #ccc;
	  background: #efefef;	
	  align: center;}
	
	table td {
	  width: 300px;
	  padding: 10px;
	  vertical-align: top;
	  border-bottom: 1px solid #ccc; }			
	
	agree {text-align: center;}

</style>
<link rel="stylesheet" type="text/css">

<!-- 다음주소 라이브러리 추가 --> <!-- 주소 찾는 코딩은 맨 밑에 (main 아래) 있습니다 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<!-- 제이쿼리 라이브러리 추가 -->
<script type="text/javascript" src="/7team_project/resources/js/jquery-1.7.1.js"></script>

<!-- 제이쿼리 코딩 -->
<script type="text/javascript">
//문서준비
$(function(){
	
	//비밀번호 확인 문구 숨기기
	$("#alert-success").hide();
	$("#alert-danger").hide();
	
	//비밀번호 일치확인
	$("#memberPass").keyup(function(){
		var pass = $("#memberPass").val();
		var pass2 = $("#memberPass2").val();

		if(pass == pass2) {
				$("#alert-success").show();
				$("#alert-danger").hide();
				$("#confirm").removeAttr("disabled");
				
		} else {
				$("#alert-success").hide();
				$("#alert-danger").show();
				$("#confirm").attr("disabled", "disabled");
		}// end of else 
	});// end of keyup
	
	$("#memberPass2").keyup(function(){
		var pass = $("#memberPass").val();
		var pass2 = $("#memberPass2").val();

		if(pass == pass2) {
				$("#alert-success").show();
				$("#alert-danger").hide();
				$("#confirm").removeAttr("disabled");
				
		}else {
				$("#alert-success").hide();
				$("#alert-danger").show();
				$("#confirm").attr("disabled", "disabled");
		} // end of else
	});// end of keyup
	
	
	//중복 확인 버튼 클릭시
	$('#idCheck').click(function(){
		//alert("ok") // 확인창
		
		//ajax 입력부분
        $.ajax({
        	type : 'get', //get, post 현재는 의미 없음
        	url : 'idCheck.do', //요청 보냄, 받을때는 컨트롤러에서 받음
        	data : { memberId : $('#memberId').val()}, //보내는 데이터, 사용자가 입력한 memberId 값을 받아서 보냄
        	contentType : 'application/x-www-form-urlencoded;charset=utf-8', //한글처리
        	success : function(result){ //갔다왔을때 함수 부르기, 성공했을때 반드시 결과 넘어옴
        		$('#idCheckResult').html(result);
        	},
        	error : function(err){
        		alert('실패:');
        		console.log(err);
        	}
        });
		
	})
	
	// 등록버튼 눌렀을 때
	$('#confirm').click(function(){
		if($('#idCheckResult').text() == '' || $('#idCheckResult').text() == "중복된 아이디가 있습니다."){
			alert('중복확인 버튼을 클릭하세요.')
			return false;	
		}
	})

})
</script>


 
<body >
	
	<main id="main-holder">
	 <h1 id="insert-header">회원가입</h1>
	 

<form method="post" action="userInsert.do" name="userinput" id="userinput">
			<table>
				<tr>
					<th class="normalbold tb_ttl">
						<div align="center">사용자 ID</div>
					</th>
					<td colspan="2" class="normal">
						<input type="text" name="memberId" id="memberId" size="20" 
								pattern="[A-Za-z0-9]{4,12}" title="영어대문자, 소문자, 숫자 중에서 4~15자로만 입력 가능합니다." required> <!-- <span id="idCheckResult" style="width:150px;color:red"></span> -->
								<!-- 영어대문자, 소문자, 숫자 중에서 4~15자로만 입력가능 -->								
						<input type="button" id="idCheck" value="중복확인" required>
						<div><span id="idCheckResult" style="width:150px; color:blue;"></span></div>
						<!-- <input type="hidden" id="idDuplication" value="idUncheck"> -->
					</td>	
				</tr>
				
				<tr>
					<th class="normalbold tb_ttl">
						<div align="center">비밀번호</div>
					</th>
					<td width="154" class="normal">
						<input type="password" name="memberPass" id="memberPass" 
								pattern="[A-Za-z0-9]{4,12}" title="영어대문자, 소문자, 숫자 중에서 4~15자로만 입력 가능합니다." required>
								<!-- 영어대문자, 소문자, 숫자 중에서 4~15자로만 입력가능 -->	
						
					</td>
				</tr>
				
				<tr>
					<th class="normalbold tb_ttl">
						<div align="center">비밀번호 확인</div>
					</th>
					<td width="160">
						<input type="password" name="memberPass2" id="memberPass2" required><br/>
						<div id="alert-success" style="width:250px;color:green">비밀번호가 일치합니다.</div>
						<div id="alert-danger" style="width:250px;color:red">비밀번호가 일치하지 않습니다.</div>

					</td>
				</tr>
								
				<tr>
					<th class="normalbold tb_ttl">
						<div align="center">사용자 이름</div>
					</th>
					<td height="23" class="normal">
						<input type="text" name="memberName" id="memberName"
							pattern="[가-힣a-zA-Z]{2,50}" title="성함을 정확히 입력해주세요" required>
					</td>
				</tr>
				
				<tr>
					<th class="normalbold tb_ttl">
						<div align="center">성별</div>
					</th>
					<td height="23" class="normal">
						<input type="radio"	name="memberGender" value="male">남성 
						<input type="radio" name="memberGender" value="female" required>여성
					</td>
				</tr>
				
				<tr>
					<th class="normalbold tb_ttl">
						<div align="center">전화번호</div>
					</th>
					<td height="23" class="normal">
						<input type="text" name="memberTel" id="memberTel" pattern="(010)\d{3,4}\d{4}" title = " 숫자만 입력해주세요. 예) 01000000000 " required>
																			<!-- 숫자만 형식 01000000000 -->
					</td>
				</tr>
								
				<tr>
					<th class="normalbold tb_ttl">
						<div align="center">주소</div>
						<!--<div align="center">상세주소</div>
						<div align="center">우편번호</div> -->
					</th>
					<td colspan="3" height="23" class="normal">
					<!-- memberAddr3 우편번호 -->
					<input type="text" name="memberAddr3" id="memberAddr3" placeholder="우편번호" required> <input type="button" onclick="execPostCode();" value="주소검색">
					<!-- memberAddr 주소 -->
					<input type="text" name="memberAddr" id="memberAddr" size="32" placeholder="주소" required> 
					<!-- memberAddr2 상세주소 -->
					<input type="text" name="memberAddr2" id="memberAddr2" size="32" placeholder="상세주소" required> 
					
					</td>
				</tr>
				
				<tr>
					<td colspan="2" class="agree">
						개인정보 수집 및 이용에 동의합니다. (필수) <input type="checkbox" id="agree" title="개인정보 수집 및 이용에 동의하셔야 사이트 이용이 가능합니다" required><br/>
						<div id="agreeCheck" style="width:250px;color:red"></div>
					</td>
				</tr>

				<tr>
					<td colspan="2" class="normal">
						<div align="center">
							<input type="submit" name="confirm" id="confirm" value="등   록">
							<input type="reset" name="reset" id="reset" value="취   소">
						</div>
					</td>
				</tr>
			</table>

		</form>
</main>

<!-- 자바스크립트 코딩 -->
<script type="text/javascript">
	
	// 다음주소 검색코딩
	// 아래 코딩 그대로 복사 붙여넣기 하시고, (1) 주소찾기 버튼에 onclick="execPostCode();" 추가, (2) 아래코딩 수정은 맨 밑에 
	// document.getElementById("memberAddr3").value = data.zonecode;
    // document.getElementById("memberAddr").value = fullRoadAddr;
    // 아이디 값만 수정했습니다 "memberAddr3"(우편번호), "memberAddr"(주소) (주소가 담길 input 아이디 값)
	
    function execPostCode() {
        new daum.Postcode({
            oncomplete: function(data) {
               // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

               // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
               // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
               var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
               var extraRoadAddr = ''; // 도로명 조합형 주소 변수

               // 법정동명이 있을 경우 추가한다. (법정리는 제외)
               // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
               if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                   extraRoadAddr += data.bname;
               }
               // 건물명이 있고, 공동주택일 경우 추가한다.
               if(data.buildingName !== '' && data.apartment === 'Y'){
                  extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
               }
               // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
               if(extraRoadAddr !== ''){
                   extraRoadAddr = ' (' + extraRoadAddr + ')';
               }
               // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
               if(fullRoadAddr !== ''){
                   fullRoadAddr += extraRoadAddr;
               }

               // 우편번호와 주소 정보를 해당 필드에 넣는다.
               console.log(data.zonecode);
               console.log(fullRoadAddr);
               
               
               // 우편번호와 주소 정보를 해당 필드에 넣는다.
               document.getElementById("memberAddr3").value = data.zonecode; //5자리 새우편번호 사용
               document.getElementById("memberAddr").value = fullRoadAddr;
               
               /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
               document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
               document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
           }
        }).open();
    }


</script>
</body>
</html>
