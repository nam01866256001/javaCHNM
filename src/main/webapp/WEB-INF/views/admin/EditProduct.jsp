<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/taglib/taglib.jsp"%>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"  id="bootstrap-css">s
	
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->




<form:form style="margin-left:300px" class="form-horizontal" action="/trasua/admin/themsanpham"
	method="post" modelAttribute="sanpham">
	<fieldset>
		<a style="color: red;" target="blank">${Status}</a>
		<!-- Form Name -->
		<h4>Thêm sản phẩm</h4>

		<form:hidden path="maSanPham" />
		<!-- Text input-->
		<div class="form-group">
			<label class="control-label">Loại sản phẩm <sup>*</sup></label>
					
						<div class="controls">
							<form:select path="maLoaiSanPham">
								<form:option value="1">Trà sữa</form:option>
								<form:option value="3">Trà trái cây</form:option>
								<form:option value="5">Machiato</form:option>
								<form:option value="6">Đồ ăn nhanh</form:option>
								
							</form:select>
						</div>
		</div>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="product_name_fr">Tên
				sản phẩm</label>
			<div class="col-md-4">

				<form:input id="product_name" name="product_name"
					placeholder="PRODUCT NAME" class="form-control input-md"
					required="" type="text" path="tenSanPham" />
			</div>
		</div>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="product_name_fr">Giá
				bán</label>
			<div class="col-md-4">

				<form:input id="product_name" name="product_name"
					placeholder="PRODUCT NAME" class="form-control input-md"
					required="" type="text" path="giaBan" />
			</div>
		</div>


		<!-- File Button -->
		<div class="form-group">
			<label class="col-md-4 control-label" for="filebutton">Hình
				ảnh</label>
			<div class="col-md-4">

				<form:input id="filebutton" name="filebutton" class="input-file"
					type="file" path="hinhAnh" />
			</div>
		</div>
		<!-- File Button -->


		<!-- Button -->
		<div class="form-group">
			<label class="col-md-4 control-label" for="singlebutton"></label>
			<div class="col-md-4">

				<input class="butonlogin" type="submit" name="" value="Tạo" />
			</div>
		</div>

	</fieldset>
</form:form>

 <form:form class="form-horizontal" action="/trasua/admin/themsanpham" method="post" modelAttribute="sanpham">
<fieldset>
<a style="color:red;" target="blank">${Status}</a>
<!-- Form Name -->
<legend>Thêm sản phẩm</legend>

<form:hidden path="maSanPham"/>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_name">Mã loại sản phẩm</label>  
  <div class="col-md-4">
     <form:select path="maLoaiSanPham">
								<form:option value="1">Trà sữa</form:option>
								
								<form:option value="3">Trà trái cây</form:option>
								
								<form:option value="5">Machiato</form:option>
								<form:option value="6">Đồ ăn nhanh</form:option>
								
							</form:select>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_name_fr">Tên sản phẩm</label>  
  <div class="col-md-4">
  
   <form:input id="product_name" name="product_name" placeholder="PRODUCT NAME" class="form-control input-md" required="" type="text" path="tenSanPham" />
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_name_fr">Giá bán</label>  
  <div class="col-md-4">
  
    <form:input id="product_name" name="product_name" placeholder="PRODUCT NAME" class="form-control input-md" required="" type="text" path="giaBan" />
  </div>
</div>

  
 <!-- File Button --> 
<div class="form-group">
  <label class="col-md-4 control-label" for="filebutton">Hình ảnh</label>
  <div class="col-md-4">
 
    <form:input id="filebutton" name="filebutton" class="input-file" type="file" path="hinhAnh" />
  </div>
</div>
<!-- File Button --> 


<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">

    <input type="submit" name="submitAccount"
								value="Cập nhật sản phẩm" class="exclusive shopBtn">
  </div>
  </div>
    
</fieldset>
 </form:form>


