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
<title>manager_shop_insert.jsp</title>

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
                                            <form class="needs-validation" method="post" action="manager_shopGoodsSizeDelete.do">
                                            	<input type="hidden" name="shopNo" id="shopNo" value="${param.shopNo}" />
                                                <input type="hidden" name="goodsNo" id="goodsNo" value="${param.goodsNo}" />
                                                <div class="mb-3">
                                                 	 <label >추가할사이즈</label>
                                                     <select class="form-control" id="sizeSelectOption" name="goodsSize">
                                                     	<option>추가 할 사이즈를 선택하세요.</option>
                                                     	<c:forEach var="sizeVO" items="${goodsSizeList}" >
                                                     		<option>${sizeVO.goodsSize}</option>
                                                     	</c:forEach>
                                                     </select>
                                                     <label id="sizeCheck" style="color:red;"></label>
                                                     
                                                </div>
                                                
                                                <hr class="mb-4">
                                                <button class="btn btn-primary btn-lg btn-block" id="insertGoodsSize" type="submit">용기사이즈추가</button>
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
	
	<script type="text/javascript"
		src="/7team_project/resources/js/manager/manager_goodsInShopDeleteSize.js"></script>
	
</body>
</html>