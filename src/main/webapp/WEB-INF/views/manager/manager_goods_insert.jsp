<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<!-- ============================================================== -->
                    <!-- pageheader  -->
                    <!-- ============================================================== -->
                   
                    <!-- ============================================================== -->
                    <!-- end pageheader  -->
                   
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="offset-xl-2 col-xl-8 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="row">
                                <div class="col-md-8">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="mb-0">추가할 상품정보 입력하세요</h4>
                                        </div>
                                        <div class="card-body">
                                        
                                        <!--!!!!! form !!!!!!-->
                                            <form class="needs-validation" method="post"  enctype="multipart/form-data" action="manager_goods_insert_result.do">
                                                <div class="mb-3">
                                                 	 <label for="firstName">상품이름</label>
                                                     <input type="text" class="form-control" name="goodsName" placeholder="" value="" required="">
                                                     <div class="invalid-feedback">
                                                     	Valid first name is required.
                                                     </div>
                                                </div>
                                                <div class="mb-3">
                                                   	<label for="firstName">수량</label>
                                                    <div class="input-group">
                                                        
                                                        <input type="text" class="form-control" name="goodsCnt" placeholder="" required="">
                                                        <div class="invalid-feedback" style="width: 100%;">
                                                            Your username is required.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mb-3">
                                                	 <label for="firstName">가격</label>
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text">₩</span>
                                                        </div>
                                                        <input type="text" class="form-control" name="goodsPrice"  placeholder="" required="">
                                                        <div class="invalid-feedback" style="width: 100%;">
                                                            Your username is required.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mb-3">
                                                    <label for="address">설명</label>
                                                    <textarea  class="form-control" name="goodsDetails" placeholder="" required ></textarea>
                                                    <div class="invalid-feedback">
                                                        Please enter your shipping address.
                                                    </div>
                                                </div>
                                                <div class="mb-3">
                                                    <label >이메지파일 </label>
                                                    <input type="file" class="form-control" name="goodsFile" placeholder="Apartment or suite">
                                                </div>
                                                
                                                <hr class="mb-4">
                                                <button class="btn btn-primary btn-lg btn-block" type="submit">상품추가</button>
                                            </form>
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