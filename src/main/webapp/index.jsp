<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    


    <link rel="apple-touch-icon" href="/7team_project/resources/assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="/7team_project/resources/assets/img/favicon.ico">

    <link rel="stylesheet" href="/7team_project/resources/assets/css/shop.css">
    <link rel="stylesheet" href="/7team_project/resources/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/7team_project/resources/assets/css/templatemo.css">
    <link rel="stylesheet" href="/7team_project/resources/assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="/7team_project/resources/assets/css/fontawesome.min.css">
<title>메인 페이지</title>
</head>
<body>
<!-- Start Top Nav -->
       <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                  <!--   <i class="fa fa-envelope mx-2"></i> -->
                    <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:info@company.com"><strong> ★Yong gi 매장 방문을 환영합니다!</strong></a>
                    <!-- i class="fa fa-phone mx-2"></i> -->
                   <!--  <a class="navbar-sm-brand text-light text-decoration-none" href="tel:010-020-0340">010-020-0340</a> -->
                </div>
                <div style="width:300px;">
                    <a class="text-light" href="https://fb.com/templatemo" target="_blank" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://twitter.com/" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.linkedin.com/" target="_blank"><i class="fab fa-linkedin fa-sm fa-fw"></i></a>
                    
                    <!-- <button type='submit'></button> -->
                </div>
            </div>
        
    </nav> 
    
    <!-- Close Top Nav -->


    <!-- Header -->
<!--     <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a text-align='center'class="navbar-brand text-success logo h1 align-self-center" href="index.html">
                 저희 매장 방문을 진심으로 환영합니다.
            </a> -->

<!--              <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link" href=".">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.do">상품보기</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/7team_project/shopList/shop.do">용기매장리스트</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.do">오시는 길</a>
                        </li>
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
                    <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-dark mr-2"></i>
                    </a>
                    <a class="nav-icon position-relative text-decoration-none" href="#">
                        <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">7</span>
                    </a>
                    <a class="nav-icon position-relative text-decoration-none" href="#">
                        <i class="fa fa-fw fa-user text-dark mr-3"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">+99</span>
                    </a>
                </div>
            </div>  -->

<!--         </div>
    </nav>  -->
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



    <!-- Start Banner Hero -->
    <div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
        <ol class="carousel-indicators">
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0" class="active"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="1"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="/7team_project/resources/assets/img/gurut5.jpg" style= "float:right; width:522px; height:350px; vertical-align: middle;" alt="사진1">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left align-self-center">
                                <h3 class="h1 text-success"><b>건강</b>하고, <b>깔끔</b>한 용기</h3> <h3></h3>
                                <h3 class="h2">A <b>healthy</b> and <b>clean</b> dish</h3>
                                <p>
                                    재활용이 가능한 자연에서 온 유리소재를 선택하고, <br/>
                                    건강하고 깔끔한 그릇만을 제작합니다.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="/7team_project/resources/assets/img/gurut2.png" style= "float:right; width:522px; height:350px; vertical-align: middle;" alt="사진2">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1">다양한 종류 및 사이즈</h1>
                                <h3 class="h2">Various types, meticulous size</h3>
                                <p>
                                   저희 매장은 재활용이 가능한 자연에서 온 유리소재를 선택하고, 충격에 강한 강화유리로 내구성을 더하고 <strong>디테일과 세심한 디자인</strong> 적용 <br/>
                                   Add <strong>durability,</strong> apply detail and <strong>careful design</strong>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="/7team_project/resources/assets/img/gurut3.png" style= "float:right; width:522px; height:350px; vertical-align: middle;" alt="사진2">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1">친환경 그릇 판매</h1>
                                <h3 class="h2">sales of eco-friendly containers </h3>
                                <p>
                                    저희 매장 용기내 캠페인 전용 용기 판매 사이트입니다.
                                    용기내 캠페인은 음식 포장에 무분별하게 사용되는 <strong>일회용품을 줄이고자</strong> 가정 내 다회용 용기(容器)를 들고 가 일회용품 대신 포장을 이끄는 캠페인입니다.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev">
            <i class="fas fa-chevron-left"></i>
        </a>
        <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next">
            <i class="fas fa-chevron-right"></i>
        </a>
    </div>
    <!-- End Banner Hero -->


    <!-- Start Categories of The Month -->
    <div class='yee'>
    <section class="container py-5">
        <div class="row text-center pt-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1"><strong>페이지 바로가기</strong></h1>
                <p>
                    아래 버튼을 눌러 상품페이지 및 매장리스트 검색 페이지로<br/> 바로 이동하실 수 있습니다.
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-md-6 p-5 mt-3" style= "text-align: center;">
                <a href="#"><img src="/7team_project/resources/assets/img/gurut6.png"  class="rounded-circle img-fluid border" style= "width:454px; height:385px; vertical-align: middle;" alt="사진1"></a>
                <h5 class="text-center mt-3 mb-3">상품보기</h5>
                <p class="text-center"><a class="btn btn-success" href="list.do">상품 페이지 바로가기</a></p>
            </div>
            <div class="col-12 col-md-5 p-5 mt-3">
                <a href="#"><img src="/7team_project/resources/assets/img/gurut7.jpg"  class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">매장리스트보기</h2>
                <p class="text-center"><a class="btn btn-success" href="/7team_project/shopList/shop.do">매장 리스트 검색 바로가기</a></p>
            </div>
        </div>
    </section>
    </div>
    <!-- End Categories of The Month -->


    <!-- Start Featured Product -->
    
    <section class="bg-light">
        <div class="container py-5">
            <div class="row text-center py-3">
                <div class="col-lg-6 m-auto">
                    <h1 class="h1" style=" font-family:궁서; font-weight: bold;">저희 매장은...</h1>
                    <p>
                        음식 포장으로 발생하는 불필요한 쓰레기를 줄이자는 취지에서 천 주머니,<br/> 에코백, 다회용기 등에 식재료나 음식을 포장해 오는 용기내 챌린지<br/>
                        운동의 이념을 바탕으로 밑의 3가지 마음을 담아 정성껏 제작하였습니다.
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <!-- <img src="shop-single.html"> -->
                            <img src="/7team_project/resources/assets/img/kk1.png" style= "height:410px;" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li text-align='center'>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                </li>
                                <li class="text-muted text-right">$240.00</li>
                            </ul>
                           <h2 style="font-family:궁서" "font-weight: bold;">엄마의 마음을 담아 ..</h2>
                            <p class="card-text">
                                (매장명)에는 소중한 가족의 건강, 청결을 생각하는 엄마의 마음을 고스란히 담아 제작하였습니다.<br/>가족의 정성 가득한 음식,마음,사랑까지 (매장명)에 담아보세요.
                            </p>
                            <p class="text-muted">Reviews (24)</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="shop-single.html">
                            <img src="/7team_project/resources/assets/img/kk2.png" style= "height:410px;" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                </li>
             
                                <li class="text-muted text-right">$480.00</li>
                            </ul>
                            <h2 style="font-family:궁서" "font-weight: bold;">깨끗한 자연을 담아 ..</h2>
                            <p class="card-text">
                               저희 Yong Gi는 무분별한 일회용 용기의 사용을 줄이고 깨끗한 환경을 만들고자 하는 환경 친화를 목적으로 그릇을 판매하고 있습니다.<br/>
                               자연을 닮은 Yong Gi 그릇으로 건강한 테이블을 선물해보세요.
                            </p>
                            <p class="text-muted">Reviews (48)</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="shop-single.html">
                            <img src="/7team_project/resources/assets/img/kk3.png" style= "height:410px;" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                </li>
                                <li class="text-muted text-right">$360.00</li>
                            </ul>
                            <h2 style="font-family:궁서" "font-weight: bold;">고객의 신뢰를 담아 ..</h2>
                            <p class="card-text">
                                Yong Gi 그릇은 묵직한 신뢰감을 바탕으로 고객을 위한 마음을 담아 제작하였습니다.<br/>고객의 입장에서, 고객을 배려하며, 매일매일 고객 여러분의 건강을 책임지겠습니다.
                            </p>
                            <p class="text-muted">Reviews (74)</p>
                        </div>
                    </div>
                </div>
                
                
<!--                 <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="shop-single.html">
                            <img src="./assets/img/feature_prod_03.jpg" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                </li>
                                <li class="text-muted text-right">$360.00</li>
                            </ul>
                            <a href="shop-single.html" class="h2 text-decoration-none text-dark">Summer Addides Shoes</a>
                            <p class="card-text">
                                Curabitur ac mi sit amet diam luctus porta. Phasellus pulvinar sagittis diam, et scelerisque ipsum lobortis nec.
                            </p>
                            <p class="text-muted">Reviews (74)</p>
                        </div>
                    </div>
                </div> -->
            </div>
        </div>
    </section>
    <!-- End Featured Product -->


    <!-- Start Footer -->
    <footer class="bg-dark" id="tempaltemo_footer">
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
        </div>

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

    </footer>
<script src="/7team_project/resources/assets/js/jquery-1.11.0.min.js"></script>
    <script src="/7team_project/resources/assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="/7team_project/resources/assets/js/bootstrap.bundle.min.js"></script>
    <script src="/7team_project/resources/assets/js/templatemo.js"></script>
    <script src="/7team_project/resources/assets/js/custom.js"></script>
</body>
</html>