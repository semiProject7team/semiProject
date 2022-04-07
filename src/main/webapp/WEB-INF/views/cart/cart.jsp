<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!--  foreach문 작성을 위함 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>cart.jsp</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    


   <link rel="apple-touch-icon" href="/7team_project/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="/7team_project/img/favicon.ico">

    <link rel="stylesheet" href="/7team_project/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/7team_project/resources/css/templatemo.css">
    <link rel="stylesheet" href="/7team_project/resources/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="/7team_project/resources/css/fontawesome.min.css">
   
    
    <link rel="stylesheet" href="/7team_project/resources/css/test.css">

    
    
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
                    <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:info@company.com">info@company.com</a>
                    <i class="fa fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="tel:010-020-0340">010-020-0340</a>
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
                YongGI
            </a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="index.html">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.html">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="shop.html">Shop</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.html">Contact</a>
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
            shopping bag
        </h2>
    </div>
    <div class="shoppingbag">
       

       
        <div class="bag_wrap nowShoppingBag">
            <div class="bag_cont">
<h3 class="tit first_title">쇼핑백 상품 </h3>
<table class="cols tbl_product shopping">
    <colgroup>
        <col style="width: 27px;">
        <col>
        <col style="width: 60px;">
        <col style="width: 120px;">
      	 <col style="width: 120px;">
      	  <col style="width: 60px;">
        
        <%--<col style="width: 106px;"> --%>
        
    </colgroup>
    <thead>
        <tr>
            <th>
                <span class="input_button small">
                  <input type="checkbox" class="all_check_input input_size_20" checked="checked">
                </span>
                <input type="hidden" id="hdchk" value="0">
            </th>
            <th>상품정보</th>
            <th>수량</th>
            <th>가격</th>
            <!-- <th>배송비</th> -->
            <th>합계</th>
            <th>삭제</th>
            
        </tr>
    </thead>
    <!-- 장바구니에 담은 상품 정보 -->
    <tbody>
        <c:forEach items="${cartList}" var="cart">
				<!-- 최종가격을 위한 hidden form -->
				<tr> 
					<td class="cart_info_td">
                        <!-- //<form id="frmlist0" name="frmlist0" method="post"> -->
                        <input type="checkbox" class="individual_cart_checkbox" checked="checked">
            			<input type="hidden" class="individual_goodsPrice_input" value="${cart.goodsPrice}">
						<input type="hidden" class="individual_cartCount_input" value="${cart.cartCnt}">
						<input type="hidden" class="individual_totalPrice_input" value="${cart.goodsPrice * cart.cartCnt}">
						<input type="hidden" class="individual_goodsNo_input" value="${cart.goodsNo}">
            			<!-- </form> -->
            			
            			<!-- 주문 form -->
						<form action="${sessionScope.memberId}" method="get" class="order_form">
						</form>
						
            			<!-- 삭제 form -->
            			<form action="delete.do" method="get" class="quantity_delete_form">
						<input type="hidden" name="cartNo" class="delete_cartNo">
						<input type="hidden" name="memberId" value="${sessionScope.memberId}">
						</form>
						
						<!-- 수량 조정 form -->
						<form action="update.do" method="get" class="quantity_update_form">
							<input type="hidden" name="cartNo" class="update_cartNo">
							<input type="hidden" name="cartCnt" class="update_cartCnt">
							<input type="hidden" name="memberId" value="${sessionScope.memberId}">
							<%-- <input type="hidden" name="goodsNo" value="${cart.goodsNo}"> --%>
						</form>
                    </td>
                    
                     
                    
					<td>${cart.goodsName }</td>
					

									<td>
										<div class="each">
											<button type="button" name="button" class="btn_up btn_plus">수량올림</button>
											<input type="text" value="${cart.cartCnt} ">
											<button type="button" name="button"
												class="btn_down btn_minus">수량내림</button>
										</div>
										<button type="button" name="button"
											style="color: #D9D9D9" class="micro_btn btn_each" data-cartNo="${cart.cartNo}">변경</button>
									</td>

									<td>${cart.goodsPrice }</td>
					<td>${cart.goodsPrice * cart.cartCnt }</td>
					<td><button class="delete_btn" data-cartNo="${cart.cartNo}">삭제</button></td>
					
				</tr>
			</c:forEach>
          
            
        
    </tbody>
</table>
<div class="bx_btn">
<form action="addcart.do">
<button type="submit" name="button" class="btn gray">쇼핑계속하기</button>
</form>
</div>
            </div>
            <div class="payment">
                <div class="bx_total">
                    <h3>주문금액</h3>
                    <form>
                      <ul>
                        <li>
                            <strong>총 상품 금액</strong>
                            <p><em id="counterTotal" class="totalPrice_em">0</em>원</p>
                        </li>
                        <li>
                            <strong>배송비</strong>
                            <p><span>+</span><em id="counterTotdeliveryamt" class="delivery_em">0</em>원</p>
                        </li>
                        <li class="total">
                            <strong>총 결제금액</strong>
                            <p><em id="counterTotalAmt" class="finalTotalPrice_em">0</em>원</p>
                        </li>
                    </ul>
                    <button type="button" name="button" class="btn_order">선택상품 주문하기</button>
                    </form>
                  
                    
                	</div>
            	</div>
        	</div>
        </div>
</section>


    <!-- Start Script -->
    <script src="/7team_project/resources/js/jquery-1.11.0.min.js"></script>
    <script src="/7team_project/resources/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="/7team_project/resources/js/bootstrap.bundle.min.js"></script>
    <script src="/7team_project/resources/js/templatemo.js"></script>
    <script src="/7team_project/resources/js/custom.js"></script>
    <!-- End Script -->
    
   <script type="text/javascript">
   $(document).ready(function(){
		
		/* 종합 정보 섹션 정보 삽입 */
		setTotalInfo();	
		
	});
   
   /* 체크여부에따른 종합 정보 변화 */
   $(".individual_cart_checkbox").on("change", function(){
   	/* 총 주문 정보 세팅(배송비, 총 가격, 마일리지, 물품 수, 종류) */
   	setTotalInfo($(".cart_info_td"));
   });
   
   //* 체크박스 전체 선택 */
$(".all_check_input").on("click", function(){

	/* 체크박스 체크/해제 */
	if($(".all_check_input").prop("checked")){
		$(".individual_cart_checkbox").attr("checked", true);
	} else{
		$(".individual_cart_checkbox").attr("checked", false);
	}
	
	/* 총 주문 정보 세팅(배송비, 총 가격, 마일리지, 물품 수, 종류) */
	setTotalInfo($(".cart_info_td"));	
	
});
	   
   //****************************
   /* 총 주문 정보 세팅(배송비, 총 가격, 마일리지, 물품 수, 종류) */
function setTotalInfo(){
	let totalPrice = 0;				// 총 가격
	let totalCount = 0;				// 총 갯수
	//let totalKind = 0;				// 총 종류
	//let totalPoint = 0;				// 총 마일리지
	let deliveryPrice = 0;			// 배송비
	let finalTotalPrice = 0; 		// 최종 가격(총 가격 + 배송비)
	
	$(".cart_info_td").each(function(index, element){
		
		
		if($(element).find(".individual_cart_checkbox").is(":checked") === true){	//체크여부
			// 총 가격
			totalPrice += parseInt($(element).find(".individual_totalPrice_input").val());
			// 총 갯수
			totalCount += parseInt($(element).find(".individual_cartCount_input").val());
			// 총 종류
			//totalKind += 1;
			// 총 마일리지
			//totalPoint += parseInt($(element).find(".individual_totalPoint_input").val());

		}
		
	});
	
	
	/* 배송비 결정 */
	if(totalPrice >= 30000){
		deliveryPrice = 0;
	} else if(totalPrice == 0){
		deliveryPrice = 0;
	} else {
		deliveryPrice = 3000;	
	}
	
	/* 총가격 + 배송비 */
	finalTotalPrice = totalPrice + deliveryPrice;
	
	/* 값 삽입 */
	// 총 가격
	$(".totalPrice_em").text(totalPrice);
	// 총 갯수
	//$(".totalCount_span").text(totalCount);
	// 배송비
	$(".delivery_em").text(deliveryPrice);	
	// 최종 가격(총 가격 + 배송비)
	$(".finalTotalPrice_em").text(finalTotalPrice);
}
   
   /* 수량버튼 */
	$(".btn_plus").on("click", function(){
		let quantity = $(this).parent("div").find("input").val();
		$(this).parent("div").find("input").val(++quantity);
	});
	$(".btn_minus").on("click", function(){
		let quantity = $(this).parent("div").find("input").val();
		if(quantity > 1){
			$(this).parent("div").find("input").val(--quantity);		
		}
	});
	
	/* 수량 수정 버튼 */
	$(".btn_each").on("click", function(e){
		e.preventDefault();
		let cartNo = $(this).attr("data-cartNo");
		let cartCnt = $(this).parent("td").find("input").val();
		$(".update_cartNo").val(cartNo);
		$(".update_cartCnt").val(cartCnt);
		$(".quantity_update_form").submit();
		
		
	});
	
	/* 장바구니 삭제 버튼 */
	$(".delete_btn").on("click", function(e){
		e.preventDefault();
		//<td><button class="delete_btn" data-cartNo="${cart.cartNo}">삭제 ${cart.cartNo}</button></td>
		const cartNo = $(this).attr("data-cartNo");
		$(".delete_cartNo").val(cartNo);
		$(".quantity_delete_form").submit();
	});
	
	/* 주문 페이지 이동 */	
	$(".btn_order").on("click", function(e){
		e.preventDefault();
		let form_contents ='';
		let orderNumber = 0;
		
		$(".cart_info_td").each(function(index, element){
			
			if($(element).find(".individual_cart_checkbox").is(":checked") === true){	//체크여부
				
				let goodsNo = $(element).find(".individual_goodsNo_input").val();
				let ogCnt = $(element).find(".individual_cartCount_input").val();
				
				let goodsNo_input = "<input name='orders[" + orderNumber + "].goodsNo' type='hidden' value='" + goodsNo + "'>";
				form_contents += goodsNo_input;
				
				let cartCount_input = "<input name='orders[" + orderNumber + "].ogCnt' type='hidden' value='" + ogCnt + "'>";
				form_contents += cartCount_input;
				
				orderNumber += 1;
				
			}
		});	

		$(".order_form").html(form_contents);
		$(".order_form").submit();
		
	});
   
   </script> 
    
</body>

</html>