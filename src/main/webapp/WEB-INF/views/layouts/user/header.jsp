<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/taglib/taglib.jsp"%>
<!-- Start header -->


<header class="top-navbar">

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container">
			<a class="navbar-brand" href="/index.jsp"> <img
				src="<c:url value="template/templateUser/images/logo.png"/>" alt="" />


			</a>
			
			
			<div class="collapse navbar-collapse" id="navbars-rs-food">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link"
						href="trang-chu">Trang chủ</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value="menu"/>">Thực đơn</a></li>
				</ul>
				<a href="cart" class="nav-item nav-link">
                        <i class="fas fa-shopping-cart"></i>
                       <span
              class="icon-shopping-cart"></span> ${ TotalQuantyCart } Sản phẩm - <span
              class= "badge badge-warning"> ${ TotalPriceCart } </span></a>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item">
					<c:if test="${not empty LoginInfor }">
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="dropdown-a"
								data-toggle="dropdown">${LoginInfor.tenNguoiDung}</a>
								<div class="dropdown-menu" aria-labelledby="dropdown-a">
									<a class="dropdown-item" href="logout">Đăng xuất</a>
									<!-- <a class="dropdown-item" href="/blog-details.html">blog Single</a> -->
								</div></li>
						</c:if> <c:if test="${ empty LoginInfor }">
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="dropdown-a"
								data-toggle="dropdown">Tài khoản</a>
								<div class="dropdown-menu" aria-labelledby="dropdown-a">
									<a class="dropdown-item" href="register">Đăng ký</a>
									<a class="dropdown-item" href="login">Đăng nhập</a>
						</c:if></li>
				</ul>
			</div>
		</div>
	</nav>
</header>
<!-- End header -->
