<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/taglib/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h2>Thông tin đơn hàng</h2>
				</div>
				<!-- <div class="col-12">
					<a href="/Product/allProduct">Sản Phẩm</a> <a
						href="/Cart/ShowtoCart">Giỏ hàng</a>
				</div> -->
			</div>
		</div>
	</div>
	<div class="container">
		<form:form action="checkout" method="post" modelAttribute="hoadon"
			class="form-horizontal">
			<div class="col-lg-8">
				<div class="checkout-inner">
					<div class="billing-address">
						<h2>Địa chỉ đặt hàng</h2>
						<div class="row">
							<div class="col-md-6">
								<c:if test="${not empty LoginInfor }">
									<label>Họ tên khách hàng:</label>
								</c:if>
								<label class="form-control"> <form:input type="text"
										value="${ LoginInfor.tenNguoiDung }" path="tenNguoiMua" />
								</label>

							</div>
							<div class="col-md-6">
								<c:if test="${not empty LoginInfor }">
									<label>Địa chỉ:</label>
								</c:if>
								<label class="form-control"> <form:input type="text"
										value="${ LoginInfor.diaChi }" path="diaChi" /></label>
							</div>
							
						</div>
						<div class="row">
							<div class="col-md-6">
								<c:if test="${not empty LoginInfor }">
									<label>Email:</label>
								</c:if>
								<label class="form-control"> <form:input type="text"
										value="${ LoginInfor.email }" path="email" /></label>
								

							</div>
							<div class="col-md-6">
								<c:if test="${not empty LoginInfor }">
									<label>Số điện thoại:</label>
								</c:if>
								<label class="form-control"> <form:input type="text"
										value="${ LoginInfor.sdt }" path="sdt" /></label>
							</div>
							
						</div>
						<div class="col-md-12">
						<!-- <input
								style="width: 218px; height: 50px; padding: 2px 10px; font-family: 'Source Code Pro', monospace; font-weight: 700; font-size: 20px; text-align: center; color: #000000; background: #FFC107; border: none; border-radius: 4px; transition: all .3s;"
								type="submit" value="Đồng ý đặt hàng" />-->
						</div>
					</div>
				</div>
			</div>
			</form:form>
			<a href="trang-chu"
						class="btn btn-success btn-block">Đồng ý đặt hàng <i
							class="fa fa-angle-right"></i></a>
	</div>
</body>
</html>