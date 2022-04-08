<%@page import="com.javaclass.basic.vo.GoodsVO"%>
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
<title>Insert title here</title>

<!-- jquery 연결 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
								<h2 class="pageheader-title">상품관리</h2>
							</div>
							<div id="custom-search" style="right:30%;position: absolute;top:75px" class="top-search-bar">
                                <input class="form-control " type="text" id="searchRecords" placeholder="Search..">
                           	 </div>
							<div class="card-body border-top col-sm-2">
								
								<select class="form-control" id="selectoption">
                                    <option>Order By</option>
                                    <option>상품수량 내림차순</option>
                                    <option>상품수량 오름차순</option>
                                    <option>상품가격 내림차순</option>
                                    <option>상품가격 오름차순</option>
                                    <option>상품조회수 내림차순</option>
                                    <option>상품조회수 오름차순</option>
                                    <option>상품등록날짜 내림차순</option>
                                    <option>상품등록날짜 오름차순</option>
                                  
                                </select>
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
														<th class="border-0">상품번호</th>
														<th class="border-0">상품이름</th>
														<th class="border-0">수량</th>
														<th class="border-0">가격</th>
														<th class="border-0">조회수</th>
														<th class="border-0">설명</th>
														<th class="border-0">상품파일명</th>
														<th class="border-0">파일사이즈</th>
														<th class="border-0">등록날짜</th>
													</tr>
												</thead>
												<tbody id="tbody">
													<c:forEach var="vo" items="${getGoodsList}">
														<tr>
															<td>${vo.no}</td>
															<td>${vo.goodsNo}</td>
															<td><a href="manager_goodsView.do?goodsNo=${vo.goodsNo}">${vo.goodsName}</a></td>
															<td>${vo.goodsCnt}</td>
															<td>${vo.goodsPrice}</td>
															<td>${vo.goodsTimes}</td>
															<td>${vo.goodsDetails}</td>
															<td>${vo.goodsFname}</td>
															<td>${vo.goodsSize}</td>	
															<td>${vo.goodsDate}</td>
															
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
					
					
					<!-- 페이징 연결 -->
					<div class="row">
                        <div class="col-xl-9 col-lg-8 col-md-8 col-sm-12 col-12">
                            <div class="row">
								<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <nav aria-label="Page navigation example">
                                    	<!-- 테이블 충 레코드수 -->
										<c:set var="recordsCnt" value="${getGoodsCount.no}" />
										<c:set var="jspFile" value="manager_goods.do?" />
										<!-- include 페이징  jsp파일  -->
										<%@include file="manager_paging.jsp" %>
										
									  	<a href="manager_goods_insert.do" class="btn btn-outline-light float-left">상품추가</a>
                                    </nav>                             
								</div>
							</div>
						</div>
					</div>
					<!-- ****************************************************************************************************** -->
				</div>
			</div>
		</div>

		

		<!--********************************************************************************************************************************************************************************************************************************-->
		
		
	</div>
	
	<script type="text/javascript"
		src="/7team_project/resources/js/manager/manager_goods.js"></script>
	
</body>
</html>