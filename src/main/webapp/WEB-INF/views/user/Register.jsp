<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/taglib/taglib.jsp"%>

<div class="container register-form">
	<div class="note"></div>
	<div class="note"></div>
	<div class="note" style="background-color: rgb(80, 116, 127)">
		<p>Bạn cần điền đầy đủ thông tin đăng ký để có thể mua trà sữa!!</p>
	</div>
	<form:form action="register"  method="post" modelAttribute="user">
		<div class="row">

			<div class="col-md-6">
				<div class="form-group">

					<form:input type="email" placeholder="Email *" class="form-control"
						id="email" path="email"
						pattern="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$" />
				</div>
				<div class="form-group">

					<form:input type="password" placeholder="Nhập mật khẩu*"
						class="form-control" id="psw" path="matKhau" />
				</div>
				<div class="form-group">
					<input type="password" class="form-control"
						placeholder="nhập lại mật khẩu *" value="" />
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">

					<form:input type="text" placeholder="Họ và tên *"
						class="form-control" id="tenNguoiDung" path="tenNguoiDung"
						pattern="^[a-zA-Z_ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằẳẵặẹẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\\s]+$" />
				</div>
				<div class="form-group">

					<form:input type="text" placeholder="Số điện thoại *"
						class="form-control" id="sdt" path="sdt" pattern="^[0-9]{10}$" />
				</div>
				<div class="form-group">

					<form:input type="text" placeholder="Địa chỉ *"
						class="form-control" id="diaChi" path="diaChi" />
				</div>

			</div>
		</div>

		<input type="submit" class="btnSubmit" value="Đăng ký" />
	</form:form>  
</div>