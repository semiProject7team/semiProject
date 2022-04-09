<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- jstl 사용 -->    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>YongGI Shop</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="resources/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/templatemo.css">
<link rel="stylesheet" href="resources/css/custom.css">

<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="resources/css/fontawesome.min.css">

<!-- Slick -->
<link rel="stylesheet" type="text/css"
	href="resources/css/slick.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/slick-theme.css">
<!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->

<!-- css설정 -->
<style>
/* login 밑줄 없애기 */
 a {  text-decoration-line: none; }
/* 아직 방문하지 않은 링크의 글자색을 정의  */
a:link {  color : #cfd6e1; }
/* 사용자가 방문한 적이 있는 링크의 글자색을 정의 */
a:visited {  color : #cfd6e1; }
</style>



<!-- 파비콘 이미지 수정 -->
<link rel="shortcut icon" type="image/x-icon" href="resources/imgs/favicon.JPG">

</head>

<body>
<!-- 헤더부분 -->
<!-- Start Top Nav -->
    <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
                    <i class="fa fa-envelope mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="yonggi@company.com">yonggi@company.com</a>
                    <i class="fa fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="010-1234-5678">010-1234-5678</a>
                </div>
                <div>
                
                   <!-- 로그인 안 했을때 => 로그인 표시 -->
                   <c:if test = "${empty sessionScope.memberId}" >   
                    <a href="userLogin.do"> login </a>
                     </c:if>
                   
                   <!-- 로그인 했을때 => 로그아웃 표시 -->
                   <c:if test = "${not empty sessionScope.memberId}" >   
                    <a href="logout.do"> logout </a>
                   </c:if>
                
            <!--<a class="text-light" href="https://fb.com/templatemo" target="_blank" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://twitter.com/" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.linkedin.com/" target="_blank"><i class="fab fa-linkedin fa-sm fa-fw"></i></a> -->
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Top Nav -->



     <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-success logo h1 align-self-center" href="index.jsp">
                YongGI
            </a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="list.do">product</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="review.do">review</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="shopList/shop.do">campaign</a>
                        </li>
                       <!--  <li class="nav-item">
                            <a class="nav-link" href="">장바구니</a>
                        </li> -->
                    </ul>
                </div>
               <div class="navbar align-self-center d-flex">
                    <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                        <div class="input-group">
                            <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
                            <div class="input-group-text">
                                <i class="fa fa-fw fa-search"></i>
                            </div>
                        </div>
                    </div>
                   <!-- <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-dark mr-2"></i>
                    </a>  -->
                    
                    
                   <%--  <!-- 장바구니 로그인 안했을 때 => 로그인 화면으로 이동 -->
                   <c:if test = "${empty sessionScope.memberId}" > 
                    <a class="nav-icon position-relative text-decoration-none" href="userLogin.do">
                        <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                        <!-- <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">7</span> -->
                    </a>
                    </c:if>
                    <!-- 장바구니 로그인 했을 때 =>  이동 cart.do로 이동-->
                   <c:if test = "${not empty sessionScope.memberId}" >  
                    <a class="nav-icon position-relative text-decoration-none" href="cart.do?memberId=${sessionScope.memberId}">
                        <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                        <!-- <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">7</span> -->
                    </a>
                    </c:if> --%>
                    
                    <!-- 장바구니 아이콘 누르면 장바구니로 이동 session에 저장된 memberId가져가야함 요청값 : cart.do(CartController) -->
                    <a class="nav-icon position-relative text-decoration-none" href="cart.do?memberId=${ sessionScope.memberId }">
                        <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                        <!-- <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">7</span> -->
                    </a>
                    
                    <!-- 마이페이지 로그인 안했을 때 =>  로그인 화면으로 이동-->
                   <c:if test = "${empty sessionScope.memberId}" >  
                    <a class="nav-icon position-relative text-decoration-none" href="userLogin.do">
                        <i class="fa fa-fw fa-user text-dark mr-3"></i>
                        <!-- <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">+99</span> -->
                    </a> 
                    </c:if>
                    
                    <!-- 마이페이지 로그인 했을 때 =>  mypage.do로 이동-->
                   <c:if test = "${not empty sessionScope.memberId}" > 
                    <a class="nav-icon position-relative text-decoration-none" href="mypage.do">
                        <i class="fa fa-fw fa-user text-dark mr-3"></i>
                        <!-- <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">+99</span> -->
                    </a> 
                    </c:if>
                </div>      
            </div>   

        </div> 
    </nav>
    <!-- Close Header -->

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
	<!-- Open Content -->
	<section class="bg-light">
		<div class="container pb-5">
			<div class="row">
				<div class="col-lg-5 mt-5">
					<div class="card mb-3">
						<img class="card-img img-fluid"
							src="resources/img/items/shop_07.jpg" alt="Card image cap"
							id="product-detail">
					</div>
					<div class="row">
					</div>
				</div>
				<!-- col end -->
				<div class="col-lg-7 mt-5">
					<div class="card">
						<div class="card-body">
							<h1 class="h2">예쁜 그릇</h1>
							<p class="h3 py-2">25000원</p>
							<p class="py-2">
								 <span class="list-inline-item text-dark"></span>
							</p>
							<ul class="list-inline">
								<li class="list-inline-item">
									<h6>브랜드:</h6>
								</li>
								<li class="list-inline-item">
									<p class="text-muted">
										<strong>친환경 나무</strong>
									</p>
								</li>
							</ul>

							<h6>상세 내용:</h6>
							<p>원목 그대로 사용하여 나무의 결이나 색감을 그대로 느낄 수 있는
							감성 우드 나무 그릇 소개합니다. 측정사이즈는 오차가 있을 수 있습니다. 
							자연 그대로 원목을 사용하였기 때문에 나무의 결, 색감, 얼룩등 나무그릇마다 다릅니다.
							그릇 안쪽에 생기는 현상이 스크래치로 보이는데 작업시 필요한 단계이므로
							매끄럽게 하고 둥글게 하기 위한 것으로 불량이 아닙니다.</p>
							<ul class="list-inline">
								<li class="list-inline-item">
									<h6></h6>
								</li>
								<li class="list-inline-item">
									<p class="text-muted">
										<strong></strong>
									</p>
								</li>
							</ul>


							<!-- 요청값 : add.do 컨트롤러: Cartcontroller -->
							<form action="add.do" method="GET">
							<!-- 장바구니로 넘어가야하는 값 hidden -->
							<input type="hidden" name="memberId" value="${sessionScope.memberId}"> <!-- **********membetId 세션값 가져오는걸로 바꾸기 -->
							<input type="hidden" name="goodsNo" value="7"> <!-- **********goodsNo 정보 넣었음 -->
								<input type="hidden" name="product-title" value="Activewear">
								<div class="row">
									<div class="col-auto">
				 						<ul class="list-inline pb-3">
											<li class="list-inline-item text-right">개수 <input
												type="hidden" name="cartCnt" id="product-quanity"
												value="1"> <!-- 갯수 name 바꿨음 -->
											</li>
											<li class="list-inline-item"><span
												class="btn btn-success" id="btn-minus">-</span></li>
											<li class="list-inline-item"><span
												class="badge bg-secondary" id="var-value">1</span></li>
											<li class="list-inline-item"><span
												class="btn btn-success" id="btn-plus">+</span></li>
										</ul>
									</div>
								</div>
								<div class="row pb-3">
									<!-- <div class="col d-grid">
										<button type="submit" class="btn btn-success btn-lg"
											name="submit" value="buy">구매</button>
									</div> -->
									<div class="col d-grid">
										<button type="submit" class="btn btn-success btn-lg"
											name="submit" value="addtocard">장바구니</button>
									</div>
								</div>
							</form>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Close Content -->

	<!-- Start Footer -->
	<!-- <footer class="bg-dark" id="tempaltemo_footer">
		<div class="container">
			<div class="row">

				<div class="col-md-4 pt-5">
					<h2 class="h2 text-success border-bottom pb-3 border-light logo">Zay
						Shop</h2>
					<ul class="list-unstyled text-light footer-link-list">
						<li><i class="fas fa-map-marker-alt fa-fw"></i> 123
							Consectetur at ligula 10660</li>
						<li><i class="fa fa-phone fa-fw"></i> <a
							class="text-decoration-none" href="tel:010-020-0340">010-020-0340</a>
						</li>
						<li><i class="fa fa-envelope fa-fw"></i> <a
							class="text-decoration-none" href="mailto:info@company.com">info@company.com</a>
						</li>
					</ul>
				</div>

				<div class="col-md-4 pt-5">
					<h2 class="h2 text-light border-bottom pb-3 border-light">Products</h2>
					<ul class="list-unstyled text-light footer-link-list">
						<li><a class="text-decoration-none" href="#">Luxury</a></li>
						<li><a class="text-decoration-none" href="#">Sport Wear</a></li>
						<li><a class="text-decoration-none" href="#">Men's Shoes</a></li>
						<li><a class="text-decoration-none" href="#">Women's
								Shoes</a></li>
						<li><a class="text-decoration-none" href="#">Popular
								Dress</a></li>
						<li><a class="text-decoration-none" href="#">Gym
								Accessories</a></li>
						<li><a class="text-decoration-none" href="#">Sport Shoes</a></li>
					</ul>
				</div>

				<div class="col-md-4 pt-5">
					<h2 class="h2 text-light border-bottom pb-3 border-light">Further
						Info</h2>
					<ul class="list-unstyled text-light footer-link-list">
						<li><a class="text-decoration-none" href="#">Home</a></li>
						<li><a class="text-decoration-none" href="#">About Us</a></li>
						<li><a class="text-decoration-none" href="#">Shop
								Locations</a></li>
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
						<li
							class="list-inline-item border border-light rounded-circle text-center">
							<a class="text-light text-decoration-none" target="_blank"
							href="http://facebook.com/"><i
								class="fab fa-facebook-f fa-lg fa-fw"></i></a>
						</li>
						<li
							class="list-inline-item border border-light rounded-circle text-center">
							<a class="text-light text-decoration-none" target="_blank"
							href="https://www.instagram.com/"><i
								class="fab fa-instagram fa-lg fa-fw"></i></a>
						</li>
						<li
							class="list-inline-item border border-light rounded-circle text-center">
							<a class="text-light text-decoration-none" target="_blank"
							href="https://twitter.com/"><i
								class="fab fa-twitter fa-lg fa-fw"></i></a>
						</li>
						<li
							class="list-inline-item border border-light rounded-circle text-center">
							<a class="text-light text-decoration-none" target="_blank"
							href="https://www.linkedin.com/"><i
								class="fab fa-linkedin fa-lg fa-fw"></i></a>
						</li>
					</ul>
				</div>
				<div class="col-auto">
					<label class="sr-only" for="subscribeEmail">Email address</label>
					<div class="input-group mb-2">
						<input type="text" class="form-control bg-dark border-light"
							id="subscribeEmail" placeholder="Email address">
						<div class="input-group-text btn-success text-light">Subscribe</div>
					</div>
				</div>
			</div>
		</div>

		<div class="w-100 bg-black py-3">
			<div class="container">
				<div class="row pt-2">
					<div class="col-12">
						<p class="text-left text-light">
							Copyright &copy; 2021 Company Name | Designed by <a
								rel="sponsored" href="https://templatemo.com" target="_blank">TemplateMo</a>
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

	<!-- Start Slider Script -->
	<script src="resources/js/slick.min.js"></script>
	<script>
		$('#carousel-related-product').slick({
			infinite : true,
			arrows : false,
			slidesToShow : 4,
			slidesToScroll : 3,
			dots : true,
			responsive : [ {
				breakpoint : 1024,
				settings : {
					slidesToShow : 3,
					slidesToScroll : 3
				}
			}, {
				breakpoint : 600,
				settings : {
					slidesToShow : 2,
					slidesToScroll : 3
				}
			}, {
				breakpoint : 480,
				settings : {
					slidesToShow : 2,
					slidesToScroll : 3
				}
			} ]
		});
	</script>
	<!-- End Slider Script -->

</body>

</html>