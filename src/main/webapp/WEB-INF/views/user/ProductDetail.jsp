
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!-- Start All Pages -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Chi tiết sản phẩm</h1>
					<h1>${ giohang.size()}</h1>
				</div>
			</div>
		</div>
	</div>
 	 
<!-- End All Pages -->
	<!-- Start About -->
	<div class="about-section-box">
		<div class="container">
			<div class="row">
			
			<div class="col-lg-6 col-md-6 text-center">				
					<div class="inner-column">
						<h1>Welcome To <span>Live Dinner Restaurant</span></h1>
						<h9>${sanpham.tenSanPham}</h9>
						<a class="btn btn-lg btn-circle btn-outline-new-white" href="#">Mua hàng</a>
						<a href="addCart/${sanpham.maSanPham}"><button style="color: white; background-color: #D65106; border-color: #D65106;">Thêm vào giỏ hàng</button></a>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<img src="<c:url value= "/template/templateUser/images/${sanpham.hinhAnh }"/>" alt="" class="img-fluid">
				</div>
				<div class="col-md-12">
					<div class="inner-pt">
					</div>
					
				</div>
				
				
			</div>
		</div>
	</div>

	<!-- End About -->