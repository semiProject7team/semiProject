<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>




<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="/7team_project/resources/css/manager/bootstrap.min.css">
<link rel="stylesheet" href="/7team_project/resources/css/manager/style.css">
<link rel="stylesheet" href="/7team_project/resources/css/manager/style1.css">
<link rel="stylesheet"
	href="/7team_project/resources/css/manager/fontawesome-all.css">
<link rel="stylesheet" href="/7team_project/resources/css/manager/chartist.css">
<link rel="stylesheet" href="/7team_project/resources/css/manager/morris.css">
<link rel="stylesheet"
	href="/7team_project/resources/css/manager/materialdesignicons.min.css">
<link rel="stylesheet" href="/7team_project/resources/css/manager/c3.css">
<link rel="stylesheet"
	href="/7team_project/resources/css/manager/flag-icon.min.css">
<title>manager_location.jsp</title>

<style type="text/css">
#goodsImage{
	position: absolute;
	width: 410px;
	top: -300px;
	right:1%;
}
</style>

<!-- jquery 연결 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<!--위에 매뉴 내용-->
	<div class="dashboard-main-wrapper">
		<%@include file="manager_menu.jsp" %>
		<!--********************************************************************************************************************************************************************************************************************************-->

		<!--member 테이블-->
		<div class="dashboard-wrapper">
			<div class="dashboard-ecommerce">
				<div class="container-fluid dashboard-content " id="table_change">
					<div class="row">
						<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
							<div class="page-header">
								<h2 class="pageheader-title">상품정보</h2>
							</div>
						</div>
					</div>
					<div class="ecommerce-widget">
						<div class="row">
							<div class="col-xl-9 col-lg-12 col-md-6 col-sm-12 col-12">
								<div class="card">

									<div class="card-body p-0">
										<div class="table-responsive">
											<table class="table">
												<tr>
													<td>상품번호</td>
													<td>${getGoodsInfo.goodsNo}</td>
												</tr>
												<tr>
													<td>상품이름</td>
													<td>${getGoodsInfo.goodsName}</td>
												</tr>
												<c:if test="${param.shopNo == null }">
												<tr>
													<td>수량</td>
													<td>${getGoodsInfo.goodsCnt}</td>
												</tr>
												</c:if>
												<tr>
													<td>가격</td>
													<td>${getGoodsInfo.goodsPrice}</td>
												</tr>													
												<tr>
													<td>조회수</td>
													<td>${getGoodsInfo.goodsTimes}</td>
												</tr>
												<tr>
													<td>설명</td>
													<td>${getGoodsInfo.goodsDetails}</td>
												</tr>
												<tr>
													<td>상품이메지파일명</td>
													<td id="imageView">${getGoodsInfo.goodsFname}</td>
												</tr>
												<tr>
													<td>상품이메지파일사이즈</td>
													<td>${getGoodsInfo.goodsSize}</td>
												</tr>
												<tr>
													<td>상품등록날짜</td>														
													<td>${getGoodsInfo.goodsDate}</td>
												</tr>
												<c:if test="${param.shopNo != null }">
													<tr>
														<td>매장용기사이즈</td>														
														<td>${getGoodsInShopSize.goodsSize}</td>
													</tr>
												</c:if>		
											</table>
										</div>
									</div>
								</div>
								<c:choose>
									<c:when test="${param.cmd != null }">
										<a  id="orderBack" class="btn btn-outline-light float-left">BACK</a>
									</c:when>
									<c:when test="${param.shopNo != null }">
										<a href="manager_goodsInShopDelete.do?shopNo=${param.shopNo}&goodsNo=${param.goodsNo}" id="shopGoodsDelete" class="btn btn-outline-light float-left">매장용기삭제</a>
										<a href="manager_goodsInShopAddSize.do?shopNo=${param.shopNo}&goodsNo=${param.goodsNo}" class="btn btn-outline-light float-left">사이즈추가</a>
										<a href="manager_goodsInShopDeleteSize.do?shopNo=${param.shopNo}&goodsNo=${param.goodsNo}" class="btn btn-outline-light float-left">사이즈삭제</a>
										<a href="manager_addInfo.do?shopNo=${param.shopNo}" class="btn btn-outline-light float-left">BACK</a>
									</c:when>
									<c:otherwise>
										<a href="manager_goodsDelete.do?goodsNo=${getGoodsInfo.goodsNo}" class="btn btn-outline-light float-left" id="goodsDelete">상품삭제하기</a>
										<a href="manager_goodsUpdate.do?goodsNo=${getGoodsInfo.goodsNo}" class="btn btn-outline-light float-left">상품정보수정하기</a>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<img src="/7team_project/resources/imgs/goodsImg/${getGoodsInfo.goodsFrname}" class="img-thumbnail" id="goodsImage">

		

		<!--********************************************************************************************************************************************************************************************************************************-->
		
		
	</div>
	
	<script type="text/javascript"
		src="/7team_project/resources/js/manager/manager_goodsView.js"></script>
	
</body>
</html>