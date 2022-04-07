<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl 사용 -->    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사용자 등록</title>
<!-- CSS -->
<style type="text/css">

	html { height: 100%; } 
	/*body { height: 100%; 
			margin: 0; 
			font-family: Arial, Helvetica, sans-serif; 
			display: grid; 
			justify-items: center; 
			align-items: center; 
			background-color: white; }*/
	h3 {text-align : center;}		
	/*#main-holder { width: 50%; 
					height: 70%; 
					display: grid; 
					justify-items: center; 
					align-items: center; 
					background-color: white; 
					border-radius: 7px; 
					box-shadow: 0px 0px 5px 2px black; }*/

	#userinput { align-self: flex-start; 
				display: grid; 
				justify-items: center; 
				align-items: center; } 
	
	#modify, #reset { width: 90%; 
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
	
	table {display: grid; 
			justify-items: center; 
			align-items: center; }
	
	table tr {
	  border-collapse: separate;
	  border-spacing: 1px;
	  text-align: left;
	  line-height: 1.5;
	  border-top: 1px solid #ccc;
	  margin: 20px 10px;
		
	}
	table th {
	  width: 150px;
	  padding: 10px;
	  font-weight: bold;
	  vertical-align: top;
	  border-bottom: 1px solid #ccc;
	  background: #F6F6F6;
	 
	}
	
	table td {
	  width: 250px;
	  padding: 10px;
	  vertical-align: top;
	  border-bottom: 1px solid #ccc;
	}			
	
	agree {text-align: center;}

</style>

<link rel="stylesheet" href="../resources/style/stylecss.css" type="text/css">
<script type="text/javascript" src="../resources/js/jquery-1.7.1.js"></script>
<script  src="../resources/js/js_userinput.js"></script>
<!-- 다음주소 라이브러리 추가 --> <!-- 주소 찾는 코딩은 맨 밑에 (main 아래) 있습니다 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<!-- 제이쿼리 라이브러리 추가 -->
<script type="text/javascript" src="/7team_project/resources/js/jquery-1.7.1.js"></script>

</head>
<!-- 제이쿼리 -->
<script type="text/javascript">
$(function(){
	//수정 버튼 눌렸을 때
	$("#modify").click(function(){
		alert('회원님의 정보가 수정되었습니다. 다시 로그인 해주세요.');
		
	})

});
</script>

<body >
<head>
    <title>Zay Shop eCommerce HTML CSS Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="resources/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="resources/img/favicon.ico">

    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/templatemo.css">
    <link rel="stylesheet" href="resources/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="resources/css/fontawesome.min.css">
<!--

    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
</head>

<body>
    <!-- Start Top Nav -->
    <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
                    <i class="fa fa-envelope mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:yonggi@company.com">yonggi@company.com</a>
                    <i class="fa fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="tel:02-2025-8523">02-2025-8523</a>
                </div>
                <div>
                    <a class="text-light" href="https://fb.com/templatemo" target="_blank" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://twitter.com/" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.linkedin.com/" target="_blank"><i class="fab fa-linkedin fa-sm fa-fw"></i></a>
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Top Nav -->
    
        <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-success logo h1 align-self-center" href="index.html">
                Yong Gi
            </a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <!-- 로그인 하지 않은 상태 카테고리 -->
                <c:if test = "${empty sessionScope.memberId}">
	                <div class="flex-fill">
	                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
	                        <li class="nav-item">
	                            <a class="nav-link" href="userLogin.do">로그인</a>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" href="userJoin.do">회원가입</a>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" href="shop.do">쇼핑하기</a>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" href="contact.html">장바구니</a>
	                        </li>
	                    </ul>
	                </div>
                </c:if>
                
                <!-- 로그인 한 후 카테고리 -->
                <c:if test = "${not empty sessionScope.memberId}" >
	                <div class="flex-fill">
	                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
	                        <li class="nav-item">
	                            <a class="nav-link" href="logout.do">로그아웃</a>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" href="shop.do">쇼핑하기</a>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" href="memberInfo.do">나의정보</a>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" href="memberDelete.do">회원탈퇴</a>
	                        </li>
	                    </ul>
	                </div>
                </c:if>
                <div class="navbar align-self-center d-flex">
                    <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                        <div class="input-group">
                            <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
                            <div class="input-group-text">
                                <i class="fa fa-fw fa-search"></i>
                            </div>
                        </div>
                    </div>
                    <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-dark mr-2"></i>
                    </a>
                    <a class="nav-icon position-relative text-decoration-none" href="#">
                        <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
                    </a>
                    <a class="nav-icon position-relative text-decoration-none" href="#">
                        <i class="fa fa-fw fa-user text-dark mr-3"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
                    </a>
                </div>
            </div>

        </div>
    </nav>
    <!-- Close Header -->

	<!-- 
    <!-- Modal -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>
    

	
	<main id="main-holder">
	
	<div style="padding:60px;">. </div>
	
	
	 <h3 id="insert-header">나의 정보</h3>
	 

	<form method="post" action="memberModify.do" name="usermodify"  id="usermodify">
			<table >
				<tr>
					<th class="normalbold tb_ttl">
						<div align="center">사용자 ID</div>
					</th>
					<td colspan="2" class="normal">
						${ sessionScope.memberId }
						
					</td>	
				</tr>
				<tr>
					<th class="normalbold tb_ttl">
						<div align="center">성함</div>
					</th> 
					<td colspan="2" class="normal">
						${ sessionScope.memberName }  
					</td>	
				</tr>
						
				<tr>
					<th class="normalbold tb_ttl">
						<div align="center">전화번호</div>
					</th>
					<td height="23" class="normal">
						<input type="text" name="memberTel" id="memberTel" pattern="(010)\d{3,4}\d{4}" title = " 숫자만 입력해주세요. 예) 01000000000 " 
							value="${sessionScope.memberTel}" required>
																			<!-- 숫자만 형식 01000000000 -->
					</td>
				</tr>
								
				<tr>
					<th class="normalbold tb_ttl">
						<div align="center">주소</div>

					</th>
					<td colspan="3" height="23" class="normal">
					<!-- memberAddr3 우편번호 -->
					<input type="text" name="memberAddr3" id="memberAddr3" placeholder="우편번호" value="${sessionScope.memberAddr3}" required> <input type="button" onclick="execPostCode();" value="주소검색">
					<!-- memberAddr 주소 -->
					<input type="text" name="memberAddr" id="memberAddr" size="32" placeholder="주소" value="${sessionScope.memberAddr}" required> 
					<!-- memberAddr2 상세주소 -->
					<input type="text" name="memberAddr2" id="memberAddr2" size="32" placeholder="상세주소" value="${sessionScope.memberAddr2}" required> 
					
					</td>
				</tr>
				

				<tr>
					<td colspan="2" class="normal">
						<div align="center">
							<input type="submit" name="modify" id="modify" value="수   정">
						</div>
					</td>
				</tr>
			</table>

		</form>
		
		<div style="padding:60px;">. </div>
		
		
</main>

   <!-- Start Footer -->
    <!-- <footer class="bg-dark" id="tempaltemo_footer">
        <div class="container">
            <div class="row">

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-success border-bottom pb-3 border-light logo">Zay Shop</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li>
                            <i class="fas fa-map-marker-alt fa-fw"></i>
                            123 Consectetur at ligula 10660
                        </li>
                        <li>
                            <i class="fa fa-phone fa-fw"></i>
                            <a class="text-decoration-none" href="tel:010-020-0340">010-020-0340</a>
                        </li>
                        <li>
                            <i class="fa fa-envelope fa-fw"></i>
                            <a class="text-decoration-none" href="mailto:info@company.com">info@company.com</a>
                        </li>
                    </ul>
                </div>

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-light border-bottom pb-3 border-light">Products</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li><a class="text-decoration-none" href="#">Luxury</a></li>
                        <li><a class="text-decoration-none" href="#">Sport Wear</a></li>
                        <li><a class="text-decoration-none" href="#">Men's Shoes</a></li>
                        <li><a class="text-decoration-none" href="#">Women's Shoes</a></li>
                        <li><a class="text-decoration-none" href="#">Popular Dress</a></li>
                        <li><a class="text-decoration-none" href="#">Gym Accessories</a></li>
                        <li><a class="text-decoration-none" href="#">Sport Shoes</a></li>
                    </ul>
                </div>

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-light border-bottom pb-3 border-light">Further Info</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li><a class="text-decoration-none" href="#">Home</a></li>
                        <li><a class="text-decoration-none" href="#">About Us</a></li>
                        <li><a class="text-decoration-none" href="#">Shop Locations</a></li>
                        <li><a class="text-decoration-none" href="#">FAQs</a></li>
                        <li><a class="text-decoration-none" href="#">Contact</a></li>
                    </ul>
                </div>

            </div>

            <div class="row text-light mb-4">
                <div class="col-12 mb-3">
                    <div class="w-100 my-3 border-top border-light"></div>
                </div>
                <div class="col-auto me-auto">
                    <ul class="list-inline text-left footer-icons">
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="http://facebook.com/"><i class="fab fa-facebook-f fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="https://www.instagram.com/"><i class="fab fa-instagram fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="https://twitter.com/"><i class="fab fa-twitter fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="https://www.linkedin.com/"><i class="fab fa-linkedin fa-lg fa-fw"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-auto">
                    <label class="sr-only" for="subscribeEmail">Email address</label>
                    <div class="input-group mb-2">
                        <input type="text" class="form-control bg-dark border-light" id="subscribeEmail" placeholder="Email address">
                        <div class="input-group-text btn-success text-light">Subscribe</div>
                    </div>
                </div>
            </div>
        </div> -->

        <div class="w-100 bg-black py-3">
            <div class="container">
                <div class="row pt-2">
                    <div class="col-12">
                        <p class="text-left text-light">
                            Copyright &copy; 2022 Yonggi Company
                            <!-- | Designed by <a rel="sponsored" href="https://templatemo.com" target="_blank">TemplateMo</a> -->
                        </p>
                    </div>
                </div>
            </div>
        </div>

    </footer>
    <!-- End Footer -->

    <!-- Start Script -->
    <script src="resources/js/jquery-1.11.0.min.js"></script>
    <script src="resources/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="resources/js/bootstrap.bundle.min.js"></script>
    <script src="resources/js/templatemo.js"></script>
    <script src="resources/js/custom.js"></script>
    <!-- End Script -->



</body>

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

</html>




