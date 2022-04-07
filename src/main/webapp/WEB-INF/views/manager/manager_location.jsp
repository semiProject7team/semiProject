<%@page import="com.javaclass.basic.vo.LocationVO"%>
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
		<%@include file="manager_menu.jsp" %>
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
							<div id="custom-search" style="right:30%;position: absolute;top:75px" class="top-search-bar">
                                <input class="form-control " type="text" id="searchRecords" placeholder="Search..">
                           	 </div>
							<div class="card-body border-top col-sm-2">
								
								<select class="form-control" id="selectoption">
                                    <option>Order By</option>
                                    <option>지역이름 내림차순</option>
                                    <option>지역이름 오름차순</option>
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
														<th class="border-0">지역고유번호</th>
														<th class="border-0">지역이름</th>
													</tr>
												</thead>
												<tbody id="tbody">
													<c:forEach var="vo" items="${getPageLocationList}">
														<tr>
															<td>${vo.no}</td>
															<td>${vo.locSn}</td>
															<td>${vo.locName}</td>
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
										<c:set var="recordsCnt" value="${getLocationCount.no}" />
										<c:set var="jspFile" value="manager_location.do?" />
										<!-- include 페이징  jsp파일  -->
										<%@include file="manager_paging.jsp" %>
									  	<a href="manager_location_insert.do" class="btn btn-outline-light float-left">지역추가</a>
									  	<a href="manager_location_delete.do" class="btn btn-outline-light float-left">지역삭제</a>
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
		src="/7team_project/resources/js/manager/manager_location.js"></script>
	
</body>
</html>