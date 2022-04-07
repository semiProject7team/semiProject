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
							<div class="row">
                                <div class="col-md-8">
                                    <div class="card">
                                        
                                        <div class="card-body">
                                        
                                        <!--!!!!! form !!!!!!-->
                                            <form class="needs-validation" method="post" action="manager_goodsSizeDelete.do">
                                            	<input type="hidden" name="memberId" id="memberId" value="${param.memberId}" />
                                                <div class="mb-3">
                                                 	 <label >주문서번호</label>
                                                     <select class="form-control" id="ordersSelectOption">
                                                     	<option>주문서번호선택하세요</option>
                                                     	<c:forEach var="vo" items="${getOrdersByMemberId}" >
                                                     		<option>${vo.orderNo}</option>
                                                     		
                                                     	</c:forEach>
                                                     </select>
                                                </div>
                                                <hr class="mb-4">
                                               
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
							
							<div class="page-header">
								<h2 class="pageheader-title">주문서정보</h2>
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
												
											</table>
											
										</div>
									</div>
								</div>
								<a href="manager_memberView.do?memberId=${param.memberId}" class="btn btn-outline-light float-left">BACK</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		

		<!--********************************************************************************************************************************************************************************************************************************-->
		
		
	</div>
	
	<script type="text/javascript"
		src="/7team_project/resources/js/manager/manager_memberOrders.js"></script>
	
</body>
</html>