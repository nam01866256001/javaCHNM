<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/taglib/taglib.jsp"%>
<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>Đăng Nhập</h3>


				<div class="d-flex justify-content-end social_icon" style="margin-top: 30px">
<<<
					<span><i class="fab fa-facebook-square"></i></span>
					<span><i class="fab fa-google-plus-square"></i></span>
					<span><i class="fab fa-twitter-square"></i></span>
				</div>
			</div>
			<div class="card-body">
				<form:form action="login"  method="post" modelAttribute="user">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						
						<form:input type="email" placeholder="username/email" class="form-control" id="username"
								path="email" pattern="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"/>
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						
						<form:input type="password" class="form-control" placeholder="password" id="psw" path="matKhau"/>
					</div>
					<div class="row align-items-center remember">
						<input type="checkbox">Nhớ Mật Khẩu
					</div>
					<div class="form-group">
						<input type="submit" value="Đăng Nhập" class="btn btn-warning" style="margin-left:120px">
					</div>
				</form:form> 
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					Bạn chưa có tài khoản??<a href="/trasua/register">Đăng Ký</a>
				</div>
				<div class="d-flex justify-content-center">
					<a href="#">Quên mật khẩu?</a>
				</div>
			</div>
		</div>
	</div>
</div>