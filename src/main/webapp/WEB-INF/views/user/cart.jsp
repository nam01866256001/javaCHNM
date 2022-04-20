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
	<!-- Start All Pages -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Giỏ hàng</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Pages -->
	<div class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h2>Chi tiết giỏ hàng</h2>
				</div>
				<div class="col-12">
					<a href="index">Trang chủ</a> <a href="menu">sản phẩm</a>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<table id="cart" class="table table-hover table-condensed">
			<thead>
				<tr>
					<th style="width: 30%">Sản phẩm</th>
					<th style="width: 30%">Tên Sản phẩm</th>
					<th style="width: 8%">Giá</th>
					<th style="width: 12%">Số lượng</th>
					<th style="width: 2%">Sửa</th>
					<th style="width: 2%" class="text-center">xoá</th>

					<th style="width: 10%">Thành tiền</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${ giohang }">
					<tr>
						<td data-th="Product">
							<div class="row">
								<div class="col-sm-4 hidden-xs">
									<img
										src="<c:url value="/template/templateUser/images/${item.value.product.hinhAnh }"/>"
										class="img-fluid" alt="Image">
								</div>

							</div>
						</td>
						<td data-th="tenSanPham"><span>${item.value.product.tenSanPham }</span></td>
						<td data-th="Price"><span>${ item.value.product.giaBan } đ</span></td>
						<td data-th="Quantity"><input type="number" min="0"
							max="1000" class="form-control text-center"
							value="${ item.value.quanty }" id="quanty-cart-${item.value.product.maSanPham }" /></td>
						<td class="actions" data-th="">
								<button class="btn btn-danger btn-sm edit-cart" data-id="${item.key}">
									<i class="fa fa-trash-o">Sửa</i>
								</button></td>

						<td class="actions" data-th=""><a
							href="<c:url value ="/deleteCart/${item.value.product.maSanPham } "/>">
								<button class="btn btn-danger btn-sm">
									<i class="fa fa-trash-o">Xoá</i>
								</button>
						</a></td>

						<td><span>${ item.value.total } đ</span></td>
					</tr>

				</c:forEach>

			</tbody>
			<tfoot>
				<tr>
					<td><a href="menu" class="btn btn-warning"><i
							class="fa fa-angle-left"></i> Tiếp tục mua</a></td>
					<td colspan="2" class="hidden-xs"></td>
					<td class="hidden-xs text-center" style="margin-right: 5px;"><strong>Tổng: <span >${ TotalPriceCart }đ</span></strong></td>
					<td><a href="checkout"
						class="btn btn-success btn-block">Thanh toán <i
							class="fa fa-angle-right"></i></a></td>
				</tr>
			</tfoot>

		</table>
	</div>
<content tag="script">
<script>
    $(".edit-cart").on("click", function(){
        var id = $(this).data("id");
        var quanty = $("#quanty-cart-"+id).val();
        alert("thay đổi số lượng thành: "  +quanty);
        window.location = "editCart/"+id+"/"+quanty;
    });
</script>
</content>
</body>
</html>