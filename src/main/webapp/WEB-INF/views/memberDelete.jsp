<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl 사용 -->    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원탈퇴</title>
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
	
	#delete, #reset { width: 90%; 
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
	//탈퇴 버튼 눌렸을 때
	$("#delete").click(function(){
		//비밀번호 입력하지 않았을때
		if($('#memberPass').val() == ""){
			alert("비밀번호를 입력해주세요.");
			$("#memberPass").focus();
			return false;
		}
		// 비밀번호 맞게 입력했을 때 마지막 확인창
		alert('정말로 탈퇴 하시겠습니까?');
		
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
	
	<div style="padding:100px;">. </div>
	
	
	 <h3 id="delete-header">회원 탈퇴</h3>
	 

	<form method="post" action="delete2.do" name="memberDelete"  id="memberDelete">
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
						<div align="center">비밀번호</div>
					</th>
					<td height="23" class="normal">
						<input type="password" name="memberPass" id="memberPass">
						
					<div style=color:red;>
						<c:if test="${msg == false}">
						비밀번호가 맞지 않습니다.
						</c:if>
					</div>
					
					</td>
				</tr>

				<tr>
					<td colspan="2" class="normal">
						<div align="center">
							<input type="submit" name="delete" id="delete" value="탈   퇴">
						</div>
					</td>
				</tr>
				
			</table>

		</form>
		
		<div style="padding:100px;">. </div>
		
		
</main>

   <!-- Start Footer -->
   <!--  <footer class="bg-dark" id="tempaltemo_footer">
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
<!-- 
        <div class="w-100 bg-black py-3">
            <div class="container">
                <div class="row pt-2">
                    <div class="col-12">
                        <p class="text-left text-light">
                            Copyright &copy; 2021 Company Name 
                            | Designed by <a rel="sponsored" href="https://templatemo.com" target="_blank">TemplateMo</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>

    </footer> -->
    <!-- End Footer -->

    <!-- Start Script -->
    <script src="resources/js/jquery-1.11.0.min.js"></script>
    <script src="resources/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="resources/js/bootstrap.bundle.min.js"></script>
    <script src="resources/js/templatemo.js"></script>
    <script src="resources/js/custom.js"></script>
    <!-- End Script -->



</body>

</html>




