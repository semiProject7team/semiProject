<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YongGI Shop</title>
 


	<link rel="apple-touch-icon" href="resources/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="resources/img/favicon.ico">
    
    <!-- 파비콘 이미지 수정 -->
	<link rel="shortcut icon" type="image/x-icon" href="resources/imgs/favicon.JPG">
    

    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/templatemo.css">
    <link rel="stylesheet" href="resources/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="resources/css/fontawesome.min.css">
   
    
    <link rel="stylesheet" href="resources/css/test.css">

<!-- css -->
<style type="text/css">

table.orderList_table {
	width: 700px;
	margin-left:auto; 
    margin-right:auto;
    margin-top: 40px;

}

table.orderList_table thead th {
    height: 70px;
    font-size: 14px;
    padding: 0 14px;
    color: #000;
    text-align: center;
    vertical-align: middle;
    border-bottom: 1px solid #b5b5b5;
}
</style>
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

   
<!-- Start Content -->
    <section id="container" class="active">
    <div class="sub_title_wrap">
        <h2 class="sub_title">
            Order Item List 
        </h2>
    </div>
    </section>

<div class="bag_wrap nowShoppingBag">
            <div class="bag_cont">

<!-- 주문상품 start -->
<table class="orderList_table">
    <colgroup>
        <col style="width: 100px;">
        <col style="width: 100px;">
        <col style="width: 100px;">
        <col style="width: 100px;">
        <col style="width: 100px;">
        <%-- <col style="width: 135px;"> --%>
        <!-- <col style="width: 150px;"> -->
    </colgroup>
    <thead>
        <tr>
            <th>구매상품번호</th>
            <th>상품이름</th>
            <th>주문개수</th>
            <th>상품가격</th>
            <th>총가격</th>
            <!-- <th>총 상품 금액</th> -->
            <!-- <th>배송비</th> -->
        </tr>
    </thead>
    <tbody>
     <c:forEach items="${orderItemList}" var="oil">
				<tr>     
					<td class="orderItem_td" style="text-align: center;">${oil.ogNo }</td>
					<td class="orderItem_td" style="text-align: center;">${oil.goodsName}</td>
					<td class="orderItem_td" style="text-align: center;">${oil.ogCnt}</td>
					<td class="orderItem_td" style="text-align: center;">${oil.ogPrice}</td>
					<td class="orderItem_td" style="text-align: center;">${oil.ogPrice*oil.ogCnt}</td>
					
				</tr>
			</c:forEach>
    </tbody>
</table><!-- 주문상품 end -->
</div>
</div>
</body>
</html>