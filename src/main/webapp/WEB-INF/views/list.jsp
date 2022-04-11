<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Zay Shop - Product Listing Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="resources/img/apple-icon.png">
    <link rel="shortcut icon" 
    type="image/x-icon" href="resources/img/favicon.ico">

    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/templatemo.css">
    <link rel="stylesheet" href="resources/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="resources/css/fontawesome.min.css">

<style type="text/css">
/* login 밑줄 없애기 */
a {
	text-decoration-line: none;
}
/* 아직 방문하지 않은 링크의 글자색을 정의  */
a:link {
	color: #cfd6e1;
}
/* 사용자가 방문한 적이 있는 링크의 글자색을 정의 */
a:visited {
	color: #cfd6e1;
}
</style>
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
                     <a class="navbar-sm-brand text-light text-decoration-none" href="yonggi@company.com">yonggi@company.com</a>
                    <i class="fa fa-phone mx-2"></i>
                     <a class="navbar-sm-brand text-light text-decoration-none" href="010-1234-5678">010-1234-5678</a>
                </div>
                <div>
                	<a href="userLogin.do"> login </a>
                  <!--   <a class="text-light" href="https://fb.com/templatemo" target="_blank" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
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
                            <a class="nav-link" href="">campaign</a>
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
                     <!-- start 오른쪽 아이콘  -->
                    <!-- <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-dark mr-2"></i>
                    </a> -->
                    <!-- 장바구니 아이콘 누르면 장바구니로 이동 session에 저장된 memberId가져가야함 요청값 : cart.do(CartController) -->
                    <a class="nav-icon position-relative text-decoration-none" href="cart.do?memberId=${ sessionScope.memberId }">
                        <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                        <!-- <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">7</span> -->
                    </a>
                    <a class="nav-icon position-relative text-decoration-none" href="#">
                        <i class="fa fa-fw fa-user text-dark mr-3"></i>
                        <!-- <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">+99</span> -->
                    </a> 
                    <!-- close 오른쪽 아이콘  -->
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



    <!-- Start Content -->
    <div class="container py-5">
        <div class="row">

            <div class="col-lg-9">
               
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                               <a href='detail1.do'><img class="card-img rounded-0 img-fluid" src="resources/img/items/shop_01.jpg"></a> 
                            </div>
                            <div class="card-body">
                                <a href="shop-single.html" class="h3 text-decoration-none">나무 그릇</a>
                                <p class="text-center mb-0">25000원</p>
                            </div>
                        </div>
                    </div>
                     <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <a href='detail2.do'><img class="card-img rounded-0 img-fluid" src="resources/img/items/shop_02.jpg"></a>
                            </div>
                            <div class="card-body">
                                <a href="shop-single.html" class="h3 text-decoration-none">백색 그릇</a>
                                <p class="text-center mb-0">25000원</p>
                            </div>
                        </div>
                    </div>
                     <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <a href='detail3.do'><img class="card-img rounded-0 img-fluid" src="resources/img/items/shop_03.jpg"></a>
                            </div>
                            <div class="card-body">
                                <a href="shop-single.html" class="h3 text-decoration-none">수프 그릇</a>
                                <p class="text-center mb-0">25000원</p>
                            </div>
                        </div>
                    </div>
                     <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <a href='detail4.do'><img class="card-img rounded-0 img-fluid" src="resources/img/items/shop_04.jpg"></a>
                            </div>
                            <div class="card-body">
                                <a href="shop-single.html" class="h3 text-decoration-none">수프 그릇</a>
                                <p class="text-center mb-0">25000원</p>
                            </div>
                        </div>
                    </div>
                     <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <a href='detail5.do'><img class="card-img rounded-0 img-fluid" src="resources/img/items/shop_05.png"></a>
                            </div>
                            <div class="card-body">
                                <a href="shop-single.html" class="h3 text-decoration-none">도자기 그릇</a>
                                <p class="text-center mb-0">25000원</p>
                            </div>
                        </div>
                    </div>
                     <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <a href='detail6.do'><img class="card-img rounded-0 img-fluid" src="resources/img/items/shop_06.jpg"></a>
                            </div>
                            <div class="card-body">
                                <a href="shop-single.html" class="h3 text-decoration-none">백색 그릇</a>
                                <p class="text-center mb-0">25000원</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <a href='detail7.do'><img class="card-img rounded-0 img-fluid" src="resources/img/items/shop_07.jpg"></a>
                            </div>
                            <div class="card-body">
                                <a href="shop-single.html" class="h3 text-decoration-none">예쁜 그릇</a>
                                <p class="text-center mb-0">25000원</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <a href='detail8.do'><img class="card-img rounded-0 img-fluid" src="resources/img/items/shop_08.png"></a>
                            </div>
                            <div class="card-body">
                                <a href="shop-single.html" class="h3 text-decoration-none">깊은 그릇</a>
                                <p class="text-center mb-0">25000원</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <a href='detail9.do'><img class="card-img rounded-0 img-fluid" src="resources/img/items/shop_09.jpg"></a>
                            </div>
                            <div class="card-body">
                                <a href="shop-single.html" class="h3 text-decoration-none">알록달록 그릇</a>
                                <p class="text-center mb-0">25000원</p>
                            </div>
                        </div>
                    </div>
                   
                    </div>
                <div div="row">
                    <ul class="pagination pagination-lg justify-content-end">
                        <li class="page-item disabled">
                            <!-- 페이징 위치 --> 
                        </li>
                    </ul>
                </div>
            </div>

        </div>
   
    <!-- End Content -->
    
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
</body>

</html>