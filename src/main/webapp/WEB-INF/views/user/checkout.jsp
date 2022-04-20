<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<!-- <div style="margin-right: -100px;margin-top: 200px" class="row">
			<form:form action="checkout" method="post" modelAttribute="hoadon"
				class="form-horizontal">
				<h3>Thông tin đơn hàng</h3>
				 <div class="row">
					<div class="col-md-6">
						<div class="control-group">
							<label class="control-label">Ho ten <sup></sup>
							</label>
							<div class="control">
								<form:input type="text" placeholder="moi nhap ho ten"
									path="TenNguoiMua" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Email <sup></sup>
							</label>
							<div class="control">
								<form:input type="email" placeholder="moi nhap email"
									path="user" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">so dien thoai <sup></sup>
							</label>
							<div class="control">
								<form:input type="text" placeholder="moi nhap so dien thoai"
									path="Sdt" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">dia chi <sup></sup>
							</label>
							<div class="control">
								<form:textarea path= "diaChi" rows="5" color ="30"/>
							</div>
						</div>
					</div>
				</div> 
			</form:form>
			

			<a href="trang-chu" class="btn btn-success btn-lg btn-block"> Xác
				nhận   <span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div> -->
		
		<form:form action="checkout" method="post" modelAttribute="hoadon"class="form-horizontal">
		<div class="col-lg-8">
                <div class="checkout-inner">
                    <div class="billing-address">
                        <h2>Địa chỉ đặt hàng</h2>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Họ tên khách hàng:</label>
                                    <label class="form-control" type="text" placeholder="moi nhap ho ten"
									path="TenNguoiMua" >
                                    <form:input />
                                    </label>
                                   
                                </div>
                                <div class="col-md-6">
                                    <label>Địa Chỉ:</label>
                                    <label class="form-control"></label>
                                </div>
                                <div class="col-md-6">
                                    <label>E-mail:</label>
                                    <label class="form-control">@kh.Email</label>
                                </div>
                                <div class="col-md-6">
                                    <label>Số điện thoại:</label>
                                    <label class="form-control">@kh.DienthoaiKH</label>
                                </div>
                                <div class="col-md-12">
                                    
                                    <input style="width: 218px; height: 50px; padding: 2px 10px; font-family: 'Source Code Pro', monospace; font-weight: 700; font-size: 20px; text-align: center; color: #000000; background: #FF6F61; border: none; border-radius: 4px; transition: all .3s;" type="submit" value="Đồng ý đặt hàng" />
                                </div>
                            </div>
                        </div>
                </div>
            </div>
            </form:form>
            
            
	</div>
</body>
</html>