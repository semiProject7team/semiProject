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

<!-- jquery 연결 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<!--위에 매뉴 내용-->
	<div class="dashboard-main-wrapper">
		<div class="dashboard-header">
			<nav class="navbar navbar-expand-lg bg-white fixed-top">
				<label class="navbar-brand">관리자님,환영합니다.</label>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse " id="navbarSupportedContent">
					<ul class="navbar-nav ml-auto navbar-right-top">
						<li class="nav-item">
							<div id="custom-search" class="top-search-bar">
								<input class="form-control" type="text" placeholder="Search..">
							</div>
						</li>
						<li class="nav-item dropdown notification"><a
							class="nav-link nav-icons" href="#" id="member_manager"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i
								class="fas fa-fw fa-bell"></i> <span class="indicator"></span></a></li>
						<li class="nav-item dropdown connection"><a class="nav-link"
							href="#" id="goods_manager" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> <i
								class="fas fa-fw fa-th"></i>
						</a></li>
					</ul>
				</div>
			</nav>
		</div>
		<!--********************************************************************************************************************************************************************************************************************************-->



		<!--왼쪽 매뉴-->
		<div class="nav-left-sidebar sidebar-dark">
			<div class="menu-list">
				<nav class="navbar navbar-expand-lg navbar-light">
					<div class="collapse navbar-collapse" id="navbarNav">
						<ul class="navbar-nav flex-column">
							<li class="nav-divider">Menu</li>
							<li class="nav-item " ><a
								class="nav-link" href="manager_member.do"
								data-toggle="collapse" aria-expanded="false"
								data-target="#submenu-1" aria-controls="submenu-1">회원관리 <span
									class="badge badge-success">6</span></a></li>
							<li class="nav-item"><a class="nav-link"
								href="manager_goods.do" data-toggle="collapse"
								aria-expanded="false" data-target="#submenu-2"
								aria-controls="submenu-2" id="goods_manager">상품관리</a></li>
							<li class="nav-item"><a class="nav-link"
								href="manager_shop.do" data-toggle="collapse"
								aria-expanded="false" data-target="#submenu-3"
								aria-controls="submenu-3" id="shops_manager">매장관리</a></li>
							
							<li class="nav-item"><a class="nav-link"
								href="manager_cart.do" data-toggle="collapse"
								aria-expanded="false" data-target="#submenu-2"
								aria-controls="submenu-2" id="goods_manager">주문서관리</a></li>
							<li class="nav-item"><a class="nav-link"
								href="manager_shopInfo.do" data-toggle="collapse"
								aria-expanded="false" data-target="#submenu-2"
								aria-controls="submenu-2" id="goods_manager">주문상품관리</a></li>
							<li class="nav-item"><a class="nav-link"
								href="manager_location.do" data-toggle="collapse"
								aria-expanded="false" data-target="#submenu-2"
								aria-controls="submenu-2" id="goods_manager">지역관리</a></li>
							<li class="nav-item"><a class="nav-link"
								href="manager_shopList.do" data-toggle="collapse"
								aria-expanded="false" data-target="#submenu-2"
								aria-controls="submenu-2" id="goods_manager">매장정보관리</a></li>
							<li class="nav-item"><a class="nav-link"
								href="manager_goodsSize.do" data-toggle="collapse"
								aria-expanded="false" data-target="#submenu-2"
								aria-controls="submenu-2" id="goods_manager">용기사이즈관리</a></li>
							
						</ul>
					</div>
				</nav>
			</div>
		</div>
		<!--********************************************************************************************************************************************************************************************************************************-->

		<!--member 테이블-->
		<div class="dashboard-wrapper">
			<div class="dashboard-ecommerce">
				<div class="container-fluid dashboard-content " id="table_change">
					<div class="row">
						<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
							<div class="page-header">
								<h2 class="pageheader-title">지역관리</h2>
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
												<thead class="bg-light">
													<tr class="border-0">
														<th class="border-0">#</th>
														<th class="border-0">매장지정번호</th>
														<th class="border-0">상품번호</th>
														<th class="border-0">가게명</th>
														<th class="border-0">용기사이즈</th>
														<th class="border-0">가게 전화번호</th>
														<th class="border-0">상세주소</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="vo" items="${getShopInfoList}">
														<tr>
															<td>${vo.no}</td>
															<td>${vo.shopNo}</td>
															<td>${vo.goodsNo}</td>
															<td>${vo.shopName}</td>
															<td>${vo.shopSize}</td>
															<td>${vo.shopTel}</td>
															<td>${vo.shopAddr}</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					
					
				</div>
				
			</div>
		</div>

		

		<!--********************************************************************************************************************************************************************************************************************************-->
		
		
	</div>
	
	
</body>
</html>