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
								<h2 class="pageheader-title">회원정보</h2>
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
													<td>회원아이디</td>
													<td>${getMemberInfo.memberId}</td>
												</tr>
												<tr>
													<td>회원이름</td>
													<td>${getMemberInfo.memberName}</td>
												</tr>
												<tr>
													<td>회원성별</td>
													<td>${getMemberInfo.memberGender}</td>
												</tr>
												<tr>
													<td>회원전화번호</td>
													<td>${getMemberInfo.memberTel}</td>
												</tr>													
												<tr>
													<td>회원주소</td>
													<td>${getMemberInfo.memberAddr}</td>
												</tr>
												<tr>
													<td>회원상세주소</td>
													<td>${getMemberInfo.memberAddr2}</td>
												</tr>
												<tr>
													<td>회원우편번호</td>
													<td>${getMemberInfo.memberAddr3}</td>
												</tr>
												<tr>
													<td>회원구매내역</td>														
													<td>${getMemberInfo.memberOrder}</td>
												</tr>
												<tr>
													<td>회원등급</td>
													<td>${getMemberInfo.memberGrade}</td>
												</tr>	
											</table>
											
										</div>
									</div>
								</div>
								<a href="manager_memberOrders.do?memberId=${param.memberId }" class="btn btn-outline-light float-left">회원주문서보기</a>
								<a href="manager_memberDelete.do?memberId=${getMemberInfo.memberId}" id="memberDelete" class="btn btn-outline-light float-left">회원정보삭제하기</a>
								<a href="manager_member.do" class="btn btn-outline-light float-left">BACK</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		

		<!--********************************************************************************************************************************************************************************************************************************-->
		
		
	</div>
	
	<script type="text/javascript"
		src="/7team_project/resources/js/manager/manager_memberView.js"></script>
	
</body>
</html>