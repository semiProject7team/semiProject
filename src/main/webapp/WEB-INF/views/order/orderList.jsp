<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>orderList</title>



<link rel="apple-touch-icon" href="/7team_project/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="/7team_project/img/favicon.ico">

    <link rel="stylesheet" href="/7team_project/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/7team_project/resources/css/templatemo.css">
    <link rel="stylesheet" href="/7team_project/resources/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="/7team_project/resources/css/fontawesome.min.css">
   
    
    <link rel="stylesheet" href="/7team_project/resources/css/test.css">

<!-- css -->
<style type="text/css">

table.orderList_table {
	width: 700px;
	margin-left:auto; 
    margin-right:auto;
    margin-top: 100px;

}

table.orderList_table thead th {
    height: 68px;
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
a.logincolor {
	text-decoration-line: none;
}
/* 아직 방문하지 않은 링크의 글자색을 정의  */
a.logincolor:link {
	color: #cfd6e1;
}
/* 사용자가 방문한 적이 있는 링크의 글자색을 정의 */
a.logincolor:visited {
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
                	<a  class="logincolor" href="userLogin.do"> login </a>
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
    <section id="container" class="active">
    <div class="sub_title_wrap">
        <h2 class="sub_title">
            Order List 
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
    </colgroup>
    <thead>
        <tr>
            <th>주문번호</th>
            <th>주문날짜</th>
            <th>주문인</th>
        </tr>
    </thead>
    <tbody>
     <c:forEach items="${orderNoList}" var="onl">
				
				<tr>     
					<td style="text-align: center;"> <a href="orderItemList.do?orderNo=${onl.orderNo }">${onl.orderNo }</a></td>
					<td style="text-align: center;">${onl.orderDate}</td>
					<td style="text-align: center;">${onl.addrName}</td>
					
				</tr>
			</c:forEach>
    </tbody>
</table><!-- 주문상품 end -->
</div>
</div>


   
    <!-- End Content -->
</body>
</html>