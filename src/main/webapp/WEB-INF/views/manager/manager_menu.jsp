<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>manager_menu.jsp</title>
</head>
<body>

	<div class="dashboard-header">
			<nav class="navbar navbar-expand-lg bg-white fixed-top">
				<label class="navbar-brand">관리자님,환영합니다.</label>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				
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
								href="manager_location.do" data-toggle="collapse"
								aria-expanded="false" data-target="#submenu-2"
								aria-controls="submenu-2" id="goods_manager">지역관리</a></li>
							<li class="nav-item"><a class="nav-link"
								href="manager_goodsSize.do" data-toggle="collapse"
								aria-expanded="false" data-target="#submenu-2"
								aria-controls="submenu-2" id="goods_manager">용기사이즈관리</a></li>
							
						</ul>
					</div>
				</nav>
			</div>
		</div>
</body>
</html>