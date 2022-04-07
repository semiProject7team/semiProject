<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- 
	Review 게시판 
	작성자 : 배창현
	작성일 : 2015.11.30
--%>

<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%
	//파라미터 한글처리
request.setCharacterEncoding("utf-8");

int tot = 0;
// Null값일때 형변환 하면 에러가나니.. 체크
if (request.getAttribute("tot") != null) {

	tot = (Integer) request.getAttribute("tot");

}
%>


<!DOCTYPE html>
<html lang="en">

<head>
<title>Zay Shop - Product Detail Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="resources/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon"
	href="resources/img/favicon.ico">

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
<%-- jQuery CDN --%>
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<%-- BootStrap CDN --%>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>


<%-- JavaScript review_read 이벤트 처리 --%>
<script type="text/javascript">

	
		
		//글 번호를 가지고 있을 전역변수
		var G_review_num;

		function review_read(num) {
			
			<%-- review_read 서블릿 호출 --%>
			
				G_review_num = num;
			
				//파라미터
				var param = {
						
						review_num : num
				}
				
				
				//요청
				$.ajax({
					
					url : "review_read.do",
					dataType : "text",
					data : param,
					type : "post",
					success : function(data) {
																
						$("#content").text(data);
											
					}
							
				});
				
				
		}
		
		
		function review_delete() {
			
			<%-- review_delete 서블릿 호출 --%>
			
				//파라미터
				var param = {
						
						review_num : G_review_num
				}
				
				
				//요청
				$.ajax({
					
					url : "review_delete.do",
					dataType : "text",
					data : param,
					type : "post",
					success : function(data) {
										
						alert("삭제 되었습니다.");
						G_review_num = 0; //전역변수 초기화
						location.href = "review.credu";
							
					}
							
				});
				
		}
		
		/*<td><a data-toggle="modal" data-target="#myModal2" class="reviewNo" value="${review.reviewNo}">
						${review.goodsReview}</a></td>*/
		$(function(){
			var reviewNo=''
			var orderNo=0
			$('.reviewNo').click(function(){
				orderNo=$(this).attr('orderNo')
				reviewNo=$(this).attr('name')
				$.ajax({
					type : "get",
					url : "reviewContent.do",
					contentType: "application/x-www-form-urlencoded; charset=UTF-8",
					data : {reviewNo:$(this).attr('name')},
					
					success : function(data) {
						
						$('#content').text(data)		
					}
							
				})
				
				/*
				
				$.ajax({	
				type:'get',
				url:'locationSelectOption.do',
				data:{locName:select},
				contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				success:function(result){
					$('#tbody').empty()
					$('#tbody').html(result)
				}
			})
			*/
			})
			
			$('#deleteReview').click(function(){
				if( $('#inputOrderNo').val()  != orderNo){
					alert('구매번호가 일치하지않습니다.확인하세요.')
					
				}else{
					location.href='deleteReview.do?reviewNo='+reviewNo
				}
				
			})
			
			
		})
		
	

</script>

<style type="text/css">

.table:hover{cursor:pointer;}

</style>


</head>

<body>

	<%-- review 리스트 서블릿 호출 --%>
	<c:url var="review_list" value="review_list.do"></c:url>
	<%-- review 작성 서블릿 호출 --%>
	<c:url var="review_write" value="review_write.do"></c:url>
	<%-- review 삭제 서블릿 호출 --%>
	<c:url var="review_delete" value="review_delete.do"></c:url>


	<!-- Start Top Nav -->
	<nav
		class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block"
		id="templatemo_nav_top">
		<div class="container text-light">
			<div class="w-100 d-flex justify-content-between">
				<div>
					<i class="fa fa-envelope mx-2"></i> <a
						class="navbar-sm-brand text-light text-decoration-none"
						href="mailto:info@company.com">info@company.com</a> <i
						class="fa fa-phone mx-2"></i> <a
						class="navbar-sm-brand text-light text-decoration-none"
						href="tel:010-020-0340">010-020-0340</a>
				</div>
				<div>
					<a class="text-light" href="https://fb.com/templatemo"
						target="_blank" rel="sponsored"><i
						class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a> <a
						class="text-light" href="https://www.instagram.com/"
						target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
					<a class="text-light" href="https://twitter.com/" target="_blank"><i
						class="fab fa-twitter fa-sm fa-fw me-2"></i></a> <a class="text-light"
						href="https://www.linkedin.com/" target="_blank"><i
						class="fab fa-linkedin fa-sm fa-fw"></i></a>
				</div>
			</div>
		</div>
	</nav>
	<!-- Close Top Nav -->


	<!-- Header -->
	<nav class="navbar navbar-expand-lg navbar-light shadow">
		<div
			class="container d-flex justify-content-between align-items-center">

			<a class="navbar-brand text-success logo h1 align-self-center"
				href="index.html"> Yong Gi </a>

			<button class="navbar-toggler border-0" type="button"
				data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div
				class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between"
				id="templatemo_main_nav">
				<div class="flex-fill">
					<ul
						class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
						<li class="nav-item"><a class="nav-link" href="list.do">상품</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="review.do">후기</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="">용기내 매장</a></li>
						<li class="nav-item"><a class="nav-link" href="">장바구니</a></li>
					</ul>
				</div>
				<div class="navbar align-self-center d-flex">
					<div
						class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
						<div class="input-group">
							<input type="text" class="form-control" id="inputMobileSearch"
								placeholder="Search ...">
							<div class="input-group-text">
								<i class="fa fa-fw fa-search"></i>
							</div>
						</div>
					</div>
					<a class="nav-icon d-none d-lg-inline" href="#"
						data-bs-toggle="modal" data-bs-target="#templatemo_search"> <i
						class="fa fa-fw fa-search text-dark mr-2"></i>
					</a> <a class="nav-icon position-relative text-decoration-none"
						href="#"> <i
						class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i> <span
						class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">7</span>
					</a> <a class="nav-icon position-relative text-decoration-none"
						href="#"> <i class="fa fa-fw fa-user text-dark mr-3"></i> <span
						class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">+99</span>
					</a>
				</div>
			</div>

		</div>
	</nav>
	<!-- Close Header -->

	<div class="container">
		<div class="jumbotron">
			<h2>상품 Review</h2>
			<p>* 별점 및 리뷰 작성 후 작성하기 버튼을 클릭해 주세요.</p>
		</div>

		<table class="table">
			<thead>
				<tr>
					<th id='title'>제목</th>
					<th>내용</th>
					<th>별점</th>
					<th>날짜</th>
				</tr>
			</thead>

			<tbody>

				<c:forEach var="review" items="${reviewList}"> 
				
				
					

					<tr class="info" id="info">
						<td><a data-toggle="modal" data-target="#myModal2" class="reviewNo" orderNo="${review.orderNo }" name="${review.reviewNo}">
						${review.goodsReview}</a></td>
						<td>${review.reviewContent }</td>
						
						<%-- 별점 --%>
						<c:choose>

							
							<c:when test="${review.reviewStar == 1}">
								<td>★☆☆☆☆</td>
							</c:when>
							
							<c:when test="${review.reviewStar == 2}">
								<td>★★☆☆☆</td>
							</c:when>
							
							<c:when test="${review.reviewStar == 3}">
								<td>★★★☆☆</td>
							</c:when>
							
							<c:when test="${review.reviewStar == 4}">
								<td>★★★★☆</td>
							</c:when>
							
							<c:when test="${review.reviewStar == 5}">
								<td>★★★★★</td>
							</c:when>  


						</c:choose>
			
						<td>${review.reviewDate }</td>

					
						
					</tr>

				</c:forEach>
				
				

			</tbody>
		</table>

		<div class="row">
			<div class="col-sm-6">
<c:set var="recordsCnt" value="${recordCnt.recordCnt}" />
                              <c:set var="jspFile" value="review.do?" />
                              <!-- include 페이징  jsp파일  -->
                              <%@include file="manager_paging.jsp" %>


			</div>
			<div class="col-sm-2"></div>
			<div class="col-sm-4 text-success" style="text-align: right;">
				<button type="button" class="btn btn-success btn-lg"
					data-toggle="modal" data-target="#myModal">쓰기</button>
			</div>
		</div>


		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog modal-lg">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>

					<div class="modal-body">

						<div class="panel-group">
							<div class="panel panel-success" style="margin-top: 10px;">
								<div class="panel-heading">Goods Review</div>
								<div class="panel-body">
									<%-- form --%>
									<form class="form-horizontal" role="form"
										action="reviewSave.do" method="get">
										<div class="form-group">
											<label class="control-label col-sm-2" for="pwd">제목:</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="review_title"
													name="goodsReview" placeholder="제목">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-sm-2" for="pwd">구매번호:</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="review_buy_no"
													name="orderNo" placeholder="구매번호">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-sm-2" for="pwd">내용:</label>
											<div class="col-sm-10">
												<textarea class="form-control" rows="5" placeholder="내용"
													name="reviewContent" id="review_content"></textarea>
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-offset-2 col-sm-10">
												<div class="radio">

													<label class="radio-inline"> <input type="radio"
														name="reviewStar" id="review_star" value="1"
														checked="checked">★☆☆☆☆
													</label> <label class="radio-inline"> <input type="radio"
														name="reviewStar" id="review_star" value="2">★★☆☆☆
													</label> <label class="radio-inline"> <input type="radio"
														name="reviewStar" id="review_star" value="3">★★★☆☆
													</label> <label class="radio-inline"> <input type="radio"
														name="reviewStar" id="review_star" value="4">★★★★☆
													</label> <label class="radio-inline"> <input type="radio"
														name="reviewStar" id="review_star" value="5">★★★★★
													</label>

												</div>
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-offset-2 col-sm-10">
												<button type="submit" class="btn btn-success">작 성</button>
												<button type="reset" class="btn btn-danger">취소</button>
											</div>
										</div>
									</form>


								</div>

							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-info" data-dismiss="modal">닫기</button>
					</div>
				</div>

			</div>
		</div>


		<!-- Modal2 _ read review -->
		<div class="modal fade" id="myModal2" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">리뷰 상세보기</h4>
					</div>
					<div class="modal-body" >
					 
						<textarea rows="10" class="form-control" readonly="readonly"
							id="content"></textarea>
					</div>
					<div class="modal-footer">

						<input type="text" id="inputOrderNo" placeholder="구매번호를 입력하세요."/>
						<button type="button" class="btn btn-danger"
						id="deleteReview">삭제</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>

					</div>
				</div>

			</div>
		</div>

	</div>
	
	<!-- Start Footer -->
	<footer class="bg-dark" id="tempaltemo_footer">
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

</html>