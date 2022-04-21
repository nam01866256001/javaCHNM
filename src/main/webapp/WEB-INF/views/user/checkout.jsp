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
	<div class="all-page-title page-breadcrumb">
        <div class="container text-center">
            <div class="row">
                <div class="col-lg-12">
                    <h1>Thanh toán</h1>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2>Thông tin khách hàng</h2>
        </div>
        <div class="col-md-12">
        <form:form action="/trasua/checkout" method="POST" modelAttribute="bill">
					
			<div class="row">
                    <div class="col-md-6">
                    <div class="form-group">
                            <label for="exampleFormControlInput4">Email <span class="text-danger">*</span></label>
                            <form:input type="text" class="form-control" path="email" value="${bill.email}" />
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlInput1">Họ tên <span class="text-danger">*</span></label>
                            <form:input type="text" class="form-control" path="tenNguoiMua" value="${nameCustomer}" />
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlInput2">Số điện thoại <span class="text-danger">*</span></label>
                            <form:input type="number" class="form-control" path="sdt" value="${bill.sdt}" />
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlInput3">Địa chỉ <span class="text-danger">*</span></label>
                            <form:input type="text" class="form-control" path="diaChi" value="${bill.diaChi}" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="exampleFormControlTextarea1">Tổng tiền</label>
                            <form:input class="form-control" path="tongTien" value="${TotalPriceCart}"/>
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlTextarea1">Ghi chú</label>
                            <form:input class="form-control" path="ghiChu" />
                        </div>
                        <div class="form-group">
                            <input type="submit" value="Đặt hàng" class="btn btn-primary">
                        </div>
                        
                    </div>
                </div>
            
						</form:form>
            
                
        </div>
    </div>
</body>
</html>