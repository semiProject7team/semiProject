<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl 사용 -->    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<!-- 제이쿼리 라이브러리 추가 -->
<script type="text/javascript" src="/7team_project/resources/js/jquery-1.7.1.js"></script>

<style>
	
	html { height: 100%; } 
	body { height: 100%; 
			margin: 0; 
			font-family: Arial, Helvetica, sans-serif; 
			display: grid; 
			justify-items: center; 
			align-items: center; 
			background-color: #505050; }
	#main-holder { width: 50%; 
					height: 50%; 
					display: grid; 
					justify-items: center; 
					align-items: center; 
					background-color: white; 
					border-radius: 7px; 
					box-shadow: 0px 0px 5px 2px black; 
					} 
	#login-error-msg-holder { width: 100%; height: 100%; 
							display: grid; 
							justify-items: center; 
							align-items: center; } 
	#login-error-msg { width: 23%; 
						text-align: center; 
						margin: 0; 
						padding: 5px; 
						font-size: 12px; 
						font-weight: bold; 
						color: #8a0000; 
						border: 1px solid #8a0000; 
						background-color: #e58f8f; 
						opacity: 0; } 
	#error-msg-second-line { display: block; } 
	
	#login-form { align-self: flex-start; 
				display: grid; 
				justify-items: center; 
				align-items: center; } 
				
	.login-form-field::placeholder { color: #3a3a3a; } 
	.login-form-field { width: 100%; border: none; 
						border-bottom: 1px solid #3a3a3a; 
						margin-bottom: 10px; 
						border-radius: 3px; 
						outline: none; 
						padding: 0px 0px 5px 5px; } 
						
	#login-form-submit, #Submit { width: 100%; 
						padding: 7px;
						margin : 5px; 
						border: none; 
						border-radius: 5px; 
						color: white; 
						font-weight: bold; 
						background-color: #59ab6e; 
						cursor: pointer; 
						outline: none; }
						
	table #id-empty, #pass-empty, #userCheckResult {font-weight: bold; 
									 				font-size:13px;}

</style>

</head>
<!-- 제이쿼리 -->
<script type="text/javascript">

// 문서준비
$(function(){
	
	//공백확인 문구 숨기기
	$("#id-empty").hide();
	$("#pass-empty").hide();
	
	//로그인 버튼 눌렸을 때
	$("#Submit").click(function(){
		/*
		var id = $("#memberId").val();
		var pass = $("#memberPass").val();
		
 		if(id == "" && pass =="") { // 아이디, 비밀번호 공백일 때
			$("#id-empty").show();
			$("#pass-empty").hide();
			$("#memberId").focus();
            return false;
            
		} else if(pass == ""){ // 비밀번호만 공백일 때 
			$("#pass-empty").show();
			$("#id-empty").hide();
			$("#memberPass").focus();
			return false;
			
		} else if(id =="" && pass != "") { // 아이디만 공백일 때
			$("#id-empty").show();
			$("#pass-empty").hide();
			$("#memberId").focus();
			return false;
		} */
		
		
	}); //end of (#Submit버튼)
	
})
	 
	
</script>
<body>
	<main id="main-holder">
		<h1 id="login-header">로그인</h1>
			
			
		<form id="login-form" name="form" action="login.do" method="post">
			<table>
			<tr>
			
			<td>
			
			<input type="text" name="memberId" id="memberId"
				class="login-form-field" placeholder="아이디"></td>
			</tr>
			
			<tr>	 
			<td><input type="password" name="memberPass" id="memberPass"
				class="login-form-field" placeholder="비밀번호">
				
				
				<div id="id-empty" style="width:250px;color:red">아이디를 입력해주세요.</div>
				<div id="pass-empty" style="width:250px;color:red">비밀번호를 입력해주세요.</div>
				
				<!-- 아이디, 비밀번호 틀릴때 -->
				<c:if test="${msg == false}">
					<div id="userCheckResult" style="width:250px;color:red"> 
					아이디 또는 비밀번호를 잘못 입력했습니다. 입력하신 내용을 다시 확인해주세요. </div>
				</c:if>	
				
			</td>	
			</tr>
			
			<tr>
  			<td colspan=2>
			<input type="submit" name="Submit" id="Submit" value="로그인">
    		<input type="button"  value="회원가입" 
    				id="login-form-submit" onclick="location.href='userJoin.do'">
    		<input type="reset" id="login-form-submit" value="취소">
			</td>
			</tr>

			</table>
		</form>
	</main>


</body>
</html>

















