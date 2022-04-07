<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>checkOut.jsp</title>
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
    
    <!-- 다음주소 라이브러리 추가 --> <!-- 주소 찾는 코딩은 맨 밑에 (main 아래) 있습니다 -->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

	<!-- 제이쿼리 라이브러리 추가 -->
	<script type="text/javascript" src="/7team_project/resources/js/jquery-1.7.1.js"></script>
	
	<!-- CSS 설정-->
	<style type="text/css">
	::placeholder {
	  font-size: 15px;
	  font-weight: 400;
	}
	
	:-ms-input-placeholder { /* Internet Explorer 10-11 */
	  color: black;
	  font-size: 15px;
	  font-weight: 400;
	}
	
	::-ms-input-placeholder { /* Microsoft Edge */
	  font-size: 15px;
	  font-weight: 400;
	}
	
	.goods_table_price_td {
		display : none;
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

<div>
    <section id="container">
        <div class="sub_title_wrap">
            <h2 class="sub_title">
                <span class="checkout">CHECKOUT</span>
            </h2>
        </div>
        <div class="shoppingbag">
             <!--   <ul class="step">
                    <li>쇼핑백</li>
                    <li class="active">주문결제</li>
                    <li><span>주문완료</li>
                </ul>-->

           

            <div class="bag_wrap">
                <div class="bag_cont final">
                    <form name="frmInfo" id="frmInfo" method="post">
<!--배송지 정보 start-->
<div style="display:block;" id='receiverInfo' class="addressInfo_input_div">
    <h3 class="tit">배송지 정보</h3>
    <table class="tbl_rixl">
        <colgroup><col style="width: 230px"><col></colgroup>
        <tbody>
            <tr>
                <th>받으시는 분</th>
                <td><input type="text" id="receivername" name="receivername"  maxlength="15" style="width: 400px" value="${memberInfo.memberName}"></td>
            </tr>
            <tr>
                <th>휴대폰 번호</th>
                <td>
                    <p class="phone">
                     	<input type="text" style="width: 300px;" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" placeholder="-를 제외하고 입력해주세요 " maxlength='11' value="${memberInfo.memberTel}">
                    </p>
                </td>
            </tr>
          
            <tr>
                <th>배송 주소</th>
                <td class="multi_input_row ">
                	<!-- orderAddr 우편번호 -->
                    <input type="text" class="address1_input" id="orderAddr" name="receiverpost1"  maxlength="7" style="width: 250px;" disabled="disabled"  placeholder="우편번호" value="${memberInfo.memberAddr3}" required>
                    <!-- <input type="hidden" id="receiverpost2" name="receiverpost2" value=""> -->
                    <button type="button" class="btn small gray" onclick="execPostCode();">우편번호 찾기</button>
                    <p class="mt10">
                    	<!-- orderAddr2 주소 -->
                        <input type="text" class="address2_input" id="orderAddr2" name="orderAddr2"  placeholder="주소"  disabled="disabled"  style="width: 400px;" value="${memberInfo.memberAddr}" required>
                        <!-- orderAddr3 상세주소 -->
                        <input type="text"  class="address3_input" id="orderAddr3" name="orderAddr3"  placeholder="상세주소" style="width: 200px;" value="${memberInfo.memberAddr2}" required>
                    </p>
                    <!-- 구매자 배송 정보 서버에 보내기 위한 hidden input태그 -->
                    <input class="addressee_input" value="${memberInfo.memberName}" type="hidden">
                </td>
            </tr>
         
            
            <tr>
                <th>배송 메세지</th>
                <td>
                    <div class="drop_down">
                        <input type="text" id="ordermemo" name="ordermemo" value="" placeholder="메세지를 입력하세요." style="width: 400px;">
                       
                    </div>
                </td>
            </tr>
        </tbody>
    </table>
</div> <!--배송지 정보end-->



<div>
	${orderList}
</div>
<div>
	${memberInfo}
</div>

<!-- 주문상품 start -->
<h3 class="tit">&#xC8FC;&#xBB38;&#xC0C1;&#xD488; <div class="notice_box">* 제주/도서산간 지역의 경우 추가 배송비가 발생할 수 있습니다.</div></h3>
<table class="cols tbl_product type2">
    <colgroup>
        <col>
        <col style="width: 115px;">
        <col style="width: 150px;">
        <col style="width: 135px;">
        <!-- <col style="width: 150px;"> -->
    </colgroup>
    <thead>
        <tr>
            <th>상품정보</th>
            <th>수량</th>
            <th>가격</th>
            <th>총 상품 금액</th>
            <!-- <th>배송비</th> -->
        </tr>
    </thead>
    <tbody>
     <c:forEach items="${orderList}" var="ol">
				<!-- 최종가격을 위한 hidden form -->
				<tr>     
					<td>${ol.goodsName }</td>
					<td>${ol.ogCnt}</td>
					<td>${ol.goodsPrice }</td>
					<td>${ol.goodsPrice * ol.ogCnt}</td>
					<!-- 최종가격 표시를 위한 hidden input  -->
					<td class="goods_table_price_td">
						<input type="hidden" class="individual_goodsPrice_input" value="${ol.goodsPrice}"> <!-- bookPrice -->
						<input type="hidden" class="individual_ogCount_input" value="${ol.ogCnt}"> <!-- bookCount  -->
						<input type="hidden" class="individual_totalPrice_input" value="${ol.goodsPrice * ol.ogCnt}"> <!-- totalPrice -->
						<input type="hidden" class="individual_goodsNo_input" value="${ol.goodsNo}"> <!-- bookId  -->
					</td>
				</tr>
			</c:forEach>
    </tbody>
</table><!-- 주문상품 end -->
   
<!-- 결제 수단 start-->
<h3 class="tit">
    결제 수단
</h3>

<ul class="choice orderSheet-payment" id="orderSheet-payment">
            <li class="wpay_radio">

                        <span class="input_button mid dot"><input type="radio" id="rdoPayment6" name="rdoPayment" onclick="WCKOrder.SelectPayment('06');"><label for="rdoPayment6">카카오 페이</label></span>
            </li>
            <li class=""><span class="input_button mid"><input type="radio" id="rdoPayment1" name="rdoPayment" onclick="WCKOrder.SelectPayment('01');" value="01" ><label for="rdoPayment1">신용카드</label></span></li>
            <li class="active"><span class="input_button mid"><input type="radio" id="rdoPayment2" name="rdoPayment" onclick="WCKOrder.SelectPayment('02');" value="02" checked><label for="rdoPayment2">간편결제</label></span></li>
            <li  class=""><span class="input_button mid"><input type="radio" id="rdoPayment3" name="rdoPayment" onclick="WCKOrder.SelectPayment('03');" value="03" ><label for="rdoPayment3">현금결제</label></span></li>
            <li class=""><span class="input_button mid"><input type="radio" id="rdoPayment4" name="rdoPayment" onclick="WCKOrder.SelectPayment('04');" value="04" ><label for="rdoPayment4">휴대폰결제</label></span></li>
           
</ul>
            </form>

   
   
               
               
                </div>
                <div class="payment final mt0">
                    <div class="bx_total">
                        <h3>최종결제금액</h3>
                        <ul>
                            <li>
                                <strong>총 상품 금액</strong>
                                <p><em class="totalPrice_em"></em>원</p>
                            </li>
                            <li>
                                <strong>배송비</strong>
                                <p><span>+</span> <em class="delivery_price_em"></em>원</p>
                            </li>
                           
                            <li class="total">
                                <strong>최종결제금액</strong>
                                <p><em id="counterTotalAmt" class="finalTotalPrice_em"></em>원</p>
                            </li>
                           
                        </ul>
                    </div>
                        <div class="bx_agree">
                            <div class="txt_chk">
                                <p class="agree_prod">주문 상품정보에 동의(필수)</p>
                                <span>(전자상거래법 제 8조 제 2항)</span>
                                <span>상품명, 가격, 배송정보, 할인내역을 확인함</span>
                            </div>
                            <div class="agree txt_chk">
                                <p>결제대행서비스 이용을 위한 개인정보 <br>제3자 제공 및 위탁 동의(필수)</p>
                                <button class="open-pop_detail open-layer btn small">상세보기</button>
                            </div>
                            <!-- ITDEV-439 텍스트 동의 문구 추가 -->
                            <div class="agree chk_all_txt">위 주문 내용을 확인 하였으며, <br>약관 전체에 동의합니다.</div>
                            <!-- //ITDEV-439 텍스트 동의 문구 추가 -->
                        </div>
                        <button type="button" name="button" class="btn_order" >결제하기</button>
                </div>
            </div>
        </div>
    </section>

<!-- 주문 요청 form -->
		<form class="order_form" action="orderPagePost.do" method="post">
			<!-- 주문자 회원번호 -->
			<input name="memberId" value="${memberInfo.memberId}" type="hidden">
			<!-- 주소록 & 받는이-->
			<input name="addrName" type="hidden">
			<input name="orderAddr" type="hidden">
			<input name="orderAddr2" type="hidden">
			<input name="orderAddr3" type="hidden">
			<!-- 상품 정보 -->
		</form>

</div>
 


<!-- 자바스크립트 코딩 -->
<script type="text/javascript">

	$(document).ready(function(){
	
	/* 주문 조합정보란 최신화 */
	setTotalInfo();
	
	}); //end of ready
	
	
	
	/* 다음주소 검색코딩 */
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
               document.getElementById("orderAddr").value = data.zonecode; //5자리 새우편번호 사용
               document.getElementById("orderAddr2").value = fullRoadAddr;
               
               /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
               document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
               document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
           }
        }).open();
    }

	/* 주문 종합 정보 세팅(배송비,총가격)*/
	function setTotalInfo(){
		let totalPrice = 0;				// 총 가격
		let deliveryPrice = 0;			// 배송비
		let finalTotalPrice = 0; 		// 최종 가격(총 가격 + 배송비)
		
		$(".goods_table_price_td").each(function(index, element){
			// 총 가격
			totalPrice += parseInt($(element).find(".individual_totalPrice_input").val());
		}); //end of goods_table_price_td
		
		/* 배송비 결정 */
		if(totalPrice >= 30000){
			deliveryPrice = 0;
		} else if(totalPrice == 0){
			deliveryPrice = 0;
		} else {
			deliveryPrice = 3000;	
		}
		
		finalTotalPrice = totalPrice + deliveryPrice;	
		  
		/* <li>
           <strong>총 상품 금액</strong>
           <p><em class="totalPrice_em"></em>원</p>
       </li>
       <li>
           <strong>배송비</strong>
           <p><span>+</span> <em class="delivery_price_em"></em>원</p>
       </li>
      
       <li class="total">
           <strong>최종결제금액</strong>
           <p><em id="counterTotalAmt" class="finalTotalPrice_em"></em>원</p>
       </li> */
	
		/* 값 삽입 */
		// 총 가격
		$(".totalPrice_em").text(totalPrice.toLocaleString());
		// 배송비
		$(".delivery_price_em").text(deliveryPrice.toLocaleString());	
		// 최종 가격(총 가격 + 배송비)
		$(".finalTotalPrice_em").text(finalTotalPrice.toLocaleString());		

	}//end of setTotalInfo
    
	/* 주문 요청 */
	$(".btn_order").on("click", function(){
		
		/* 주소 정보 & 받는이*/
		$(".addressInfo_input_div").each(function(i, obj){
				$("input[name='addrName']").val($(obj).find(".addressee_input").val());
				$("input[name='orderAddr']").val($(obj).find(".address1_input").val());
				$("input[name='orderAddr2']").val($(obj).find(".address2_input").val());
				$("input[name='orderAddr3']").val($(obj).find(".address3_input").val());
		});	
			
		
		/* 상품정보 */
		let form_contents = ''; 
		$(".goods_table_price_td").each(function(index, element){
			let goodsNo = $(element).find(".individual_goodsNo_input").val();
			let ogCnt = $(element).find(".individual_ogCount_input").val();
			let goodsPrice = $(element).find(".individual_goodsPrice_input").val();
			let goodsNo_input = "<input name='orders[" + index + "].goodsNo' type='hidden' value='" + goodsNo + "'>";
			form_contents += goodsNo_input;
			let ogCnt_input = "<input name='orders[" + index + "].ogCnt' type='hidden' value='" + ogCnt + "'>";
			form_contents += ogCnt_input;
			let goodsPrice_input = "<input name='orders[" + index + "].goodsPrice' type='hidden' value='" + goodsPrice + "'>";
			form_contents += goodsPrice_input;
		});	
		
		$(".order_form").append(form_contents);	
		
		/* 서버 전송 */
		$(".order_form").submit();

	}); //end of 주문요청
	
	
</script>

</body>


</html>