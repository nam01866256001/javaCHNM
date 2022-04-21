<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/taglib/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<!-- Start All Pages -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Special Menu</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Pages -->
	

	<!-- Start Menu -->
	<div class="menu-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center"></div>
				</div>
			</div>

			<div class="row inner-menu-box">
				<div class="col-3">
					<div class="nav flex-column nav-pills" id="v-pills-tab"
						role="tablist" aria-orientation="vertical">

						<a class="nav-link active" id="v-pills-home-tab"
							 href="/trasua/menu" role="tab"
							aria-controls="v-pills-home" aria-selected="true">All</a>

						<c:forEach var="loaisanpham" items="${loaisanpham}">
							<a class="nav-link" id="v-pills-profile-tab" 
								href="/trasua/SPcategory/${ loaisanpham.maLoaiSanPham }" role="tab"
								aria-controls="v-pills-profile" aria-selected="false" >${ loaisanpham.tenLoaiSanPham }</a>
						</c:forEach>

						<!-- <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill"
							href="#v-pills-profile" role="tab"
							aria-controls="v-pills-profile" aria-selected="false">Drinks</a>
						<a class="nav-link" id="v-pills-settings-tab" data-toggle="pill"
							href="#v-pills-settings" role="tab"
							aria-controls="v-pills-settings" aria-selected="false">Dinner</a> -->
					</div>
				</div>

				<div class="col-9">
					<div class="tab-content" id="v-pills-tabContent">
						<div class="tab-pane fade show active" id="v-pills-home"
							role="tabpanel" aria-labelledby="v-pills-home-tab">
							<div class="row">
								<c:forEach var="item" items="${sanpham1}">
									<div class="col-lg-4 col-md-6 special-grid drinks">
										<div class="gallery-single fix">
										
											<img
												src="<c:url value="/template/templateUser/images/${item.hinhAnh }"/>"
												class="img-fluid" alt="Image">
											<div class="why-text">
												<h4>${item.tenSanPham}</h4>
												<h5>${item.giaBan}</h5>
												<a href="chi-tiet-sp/${item.maSanPham}"><button
														style="color: white; background-color: #D65106; border-color: #D65106;">Chi
														tiết sản phẩm</button></a>
												<a href="/trasua/addCart/${item.maSanPham}"><button
														style="color: white; background-color: #D65106; border-color: #D65106;">Thêm vào giỏ hàng</button></a>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- End Menu -->

	<!-- Start QT -->
	<div class="qt-box qt-background">
		<div class="container">
			<div class="row">
				<div class="col-md-8 ml-auto mr-auto text-center">
					<p class="lead ">" If you're not the one cooking, stay out of
						the way and compliment the chef. "</p>
					<span class="lead">Michael Strahan</span>
				</div>
			</div>
		</div>
	</div>
	<!-- End QT -->

	<!-- Start Customer Reviews -->
	<div class="customer-reviews-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12"></div>
			</div>
			<div class="row">
				<div class="col-md-8 mr-auto ml-auto text-center">
					<div id="reviews" class="carousel slide" data-ride="carousel">
						<div class="carousel-inner mt-4">
							<div class="carousel-item text-center active">
								<div class="img-box p-1 border rounded-circle m-auto">
									<img class="d-block w-100 rounded-circle"
										src="images/quotations-button.png" alt="">
								</div>
								<h5 class="mt-4 mb-0">
									<strong class="text-warning text-uppercase">Paul
										Mitchel</strong>
								</h5>
								<h6 class="text-dark m-0">Web Developer</h6>
								<p class="m-0 pt-3">Lorem ipsum dolor sit amet, consectetur
									adipiscing elit. Nam eu sem tempor, varius quam at, luctus dui.
									Mauris magna metus, dapibus nec turpis vel, semper malesuada
									ante. Idac bibendum scelerisque non non purus. Suspendisse
									varius nibh non aliquet.</p>
							</div>
							<div class="carousel-item text-center">
								<div class="img-box p-1 border rounded-circle m-auto">
									<img class="d-block w-100 rounded-circle"
										src="images/quotations-button.png" alt="">
								</div>
								<h5 class="mt-4 mb-0">
									<strong class="text-warning text-uppercase">Steve
										Fonsi</strong>
								</h5>
								<h6 class="text-dark m-0">Web Designer</h6>
								<p class="m-0 pt-3">Lorem ipsum dolor sit amet, consectetur
									adipiscing elit. Nam eu sem tempor, varius quam at, luctus dui.
									Mauris magna metus, dapibus nec turpis vel, semper malesuada
									ante. Idac bibendum scelerisque non non purus. Suspendisse
									varius nibh non aliquet.</p>
							</div>
							<div class="carousel-item text-center">
								<div class="img-box p-1 border rounded-circle m-auto">
									<img class="d-block w-100 rounded-circle"
										src="images/quotations-button.png" alt="">
								</div>
								<h5 class="mt-4 mb-0">
									<strong class="text-warning text-uppercase">Daniel
										vebar</strong>
								</h5>
								<h6 class="text-dark m-0">Seo Analyst</h6>
								<p class="m-0 pt-3">Lorem ipsum dolor sit amet, consectetur
									adipiscing elit. Nam eu sem tempor, varius quam at, luctus dui.
									Mauris magna metus, dapibus nec turpis vel, semper malesuada
									ante. Idac bibendum scelerisque non non purus. Suspendisse
									varius nibh non aliquet.</p>
							</div>
						</div>
						<a class="carousel-control-prev" href="#reviews" role="button"
							data-slide="prev"> <i class="fa fa-angle-left"
							aria-hidden="true"></i> <span class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#reviews" role="button"
							data-slide="next"> <i class="fa fa-angle-right"
							aria-hidden="true"></i> <span class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Customer Reviews -->

</body>
</html>