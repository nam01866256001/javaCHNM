<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

     <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

 
	
<!-- Start slides -->
	<div id="slides" class="cover-slides">
		<ul class="slides-container">
			<li class="text-left">
				<img src="<c:url value="/template/templateUser/images/slider-01.jpg"/>" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20"><strong>Chào mừng <br> đến với CHNM</strong></h1>
									<p class="m-b-40">BẠN CÓ MUỐN THỬ MỘT CHÚT <br>
										HƯƠNG VỊ CỦA SỰ SAY MÊ.</p>
							<p><a class="btn btn-lg btn-circle btn-outline-new-white" href="#">Reservation</a></p>
						</div>
					</div>
				</div>
			</li>
			<li class="text-left">
				<img src="<c:url value="/template/templateUser/images/slider-02.jpg"/>" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
								<h1 class="m-b-20"><strong>Chào mừng <br> đến với CHNM</strong></h1>
								<p class="m-b-40">Dăm ba cây kẹo mút  <br>
								sao có sức hút bằng CHNM.</p>
							<p><a class="btn btn-lg btn-circle btn-outline-new-white" href="#">Reservation</a></p>
						</div>
					</div>
				</div>
			</li>
			<li class="text-left">
				<img src="<c:url value="/template/templateUser/images/slider-03.jpg"/>" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20"><strong>Chào mừng <br> đến với CHNM</strong></h1>
						<p class="m-b-40">CHNM - Quán ăn ONLINE ship đồ về tận nơi bạn ở, một hình thức tiện lợi
							cho những tín đồ ăn đam mê ăn uống <br>
							nhưng lại không muốn đi ra ngoài vì ngại đường xa
							hoặc không tìm được quán ưng ý.</p>
							<p><a class="btn btn-lg btn-circle btn-outline-new-white" href="#">Reservation</a></p>
						</div>
					</div>
				</div>
			</li>
		</ul>
		<div class="slides-navigation">
			<a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
			<a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
		</div>
	</div>
	<!-- End slides -->
	
	<!-- Start About -->
	<div class="about-section-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-12 text-center">
					<div class="inner-column">
						<h1>Đến với <span>CHNM</span></h1>
					<p style="font-weight: bold ;color:black" >MENU quán vô cùng phong phú với các món ăn hấp dẫn</p>
						<p style="font-weight: bold ;color: black">được chế biến bởi đầu bếp
							chuyên đồ Hàn. Thực phẩm được chọn lựa cẩn thận, đảm bảo an toàn từ khâu chế biến
							lẫn đóng gói, để bạn có thể yên tâm thưởng thức ngay khi nhận.</p>
							<p style="font-weight: bold ;color: black">Bên cạnh đồ ăn ngon chất lượng, CHNM còn thỏa măn ví tiền của bạn với
							giá cả "hạt rẻ" bất ngờ, giúp bạn ăn uống thỏa thích mà không lo đau ví.</p>
						<a class="btn btn-lg btn-circle btn-outline-new-white" href="#">Reservation</a>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12">
					<img src="<c:url value="/template/templateUser/images/about-img.jpg"/>" alt="" class="img-fluid">
				</div>
			</div>
		</div>
	</div>
	<!-- End About -->
	
	<!-- Start QT -->
	<div class="qt-box qt-background">
		<div class="container">
			<div class="row">
				<div class="col-md-8 ml-auto mr-auto text-center">
					<p class="lead ">
						 Với CHNM, bạn chỉ cần nằm nhà đặt đồ là có ngay món ngon giá rẻ để lấp đầy chiếc bụng
						đói của mình rồi.
					</p>
					<span class="lead">CHNM</span>
				</div>
			</div>
		</div>
	</div>
	<!-- End QT -->
	
	<!-- Start Menu -->
	<div class="menu-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Special Menu</h2>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting</p>
					</div>
				</div>
			</div>
			
			<div class="row inner-menu-box">
				<div class="col-3">
					<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
						<a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">All</a>
						<a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Drinks</a>
						<a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Lunch</</a>
						<a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false">Dinner</a>
					</div>
				</div>
				
				<div class="col-9">
					<div class="tab-content" id="v-pills-tabContent">
						<div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
							<div class="row">
								<div class="col-lg-4 col-md-6 special-grid drinks">
									<div class="gallery-single fix">
										<img src="<c:url value="/template/templateUser/images/img-01.jpg"/>" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Special Drinks 1</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5> $7.79</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid drinks">
									<div class="gallery-single fix">
										<img src="<c:url value="/template/templateUser/images/img-02.jpg"/>" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Special Drinks 2</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5> $9.79</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid drinks">
									<div class="gallery-single fix">
										<img src="<c:url value="/template/templateUser/images/img-03.jpg"/>" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Special Drinks 3</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5> $10.79</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
										<img src="<c:url value="/template/templateUser/images/img-04.jpg"/>" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Special Lunch 1</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5> $15.79</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
										<img src="<c:url value="/template/templateUser/images/img-05.jpg"/>" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Special Lunch 2</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5> $18.79</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
										<img src="<c:url value="/template/templateUser/images/img-06.jpg"/>" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Special Lunch 3</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5> $20.79</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="<c:url value="/template/templateUser/images/img-07.jpg"/>" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Special Dinner 1</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5> $25.79</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="<c:url value="/template/templateUser/images/img-08.jpg"/>" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Special Dinner 2</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5> $22.79</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="<c:url value="/template/templateUser/images/img-09.jpg"/>" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Special Dinner 3</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5> $24.79</h5>
										</div>
									</div>
								</div>
							</div>
							
						</div>
						<div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
							<div class="row">
								<div class="col-lg-4 col-md-6 special-grid drinks">
									<div class="gallery-single fix">
										<img src="<c:url value="/template/templateUser/images/img-01.jpg"/>" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Special Drinks 1</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5> $7.79</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid drinks">
									<div class="gallery-single fix">
										<img src="<c:url value="/template/templateUser/images/img-02.jpg"/>" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Special Drinks 2</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5> $9.79</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid drinks">
									<div class="gallery-single fix">
										<img src="<c:url value="/template/templateUser/images/img-03.jpg"/>" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Special Drinks 3</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5> $10.79</h5>
										</div>
									</div>
								</div>
							</div>
							
						</div>
						<div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
							<div class="row">
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
										<img src="<c:url value="/template/templateUser/images/img-04.jpg"/>" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Special Lunch 1</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5> $15.79</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
										<img src="<c:url value="/template/templateUser/images/img-05.jpg"/>" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Special Lunch 2</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5> $18.79</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
										<img src="<c:url value="/template/templateUser/images/img-06.jpg"/>" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Special Lunch 3</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5> $20.79</h5>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">
							<div class="row">
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="<c:url value="/template/templateUser/images/img-07.jpg"/>" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Special Dinner 1</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5> $25.79</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="<c:url value="/template/templateUser/images/img-08.jpg"/>" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Special Dinner 2</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5> $22.79</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="<c:url value="/template/templateUser/images/img-09.jpg"/>" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Special Dinner 3</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5> $24.79</h5>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</div>
	<!-- End Menu -->
	
	<!-- Start Gallery -->
	<div class="gallery-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Gallery</h2>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting</p>
					</div>
				</div>
			</div>
			<div class="tz-gallery">
				<div class="row">
					<div class="col-sm-12 col-md-4 col-lg-4">
						<a class="lightbox" href="<c:url value="/template/templateUser/images/gallery-img-01.jpg"/>">
							<img class="img-fluid" src="<c:url value="/template/templateUser/images/gallery-img-01.jpg"/>" alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-4">
						<a class="lightbox" href="<c:url value="/template/templateUser/images/gallery-img-02.jpg"/>">
							<img class="img-fluid" src="<c:url value="/template/templateUser/images/gallery-img-02.jpg"/>" alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-4">
						<a class="lightbox" href="<c:url value="/template/templateUser/images/gallery-img-03.jpg"/>">
							<img class="img-fluid" src="<c:url value="/template/templateUser/images/gallery-img-03.jpg"/>" alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-12 col-md-4 col-lg-4">
						<a class="lightbox" href="<c:url value="/template/templateUser/images/gallery-img-04.jpg"/>">
							<img class="img-fluid" src="<c:url value="/template/templateUser/images/gallery-img-04.jpg"/>" alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-4">
						<a class="lightbox" href="<c:url value="/template/templateUser/images/gallery-img-05.jpg"/>">
							<img class="img-fluid" src="<c:url value="templateUser/images/gallery-img-05.jpg"/>" alt="Gallery Images">
						</a>
					</div> 
					<div class="col-sm-6 col-md-4 col-lg-4">
						<a class="lightbox" href="<c:url value="/template/templateUser/images/gallery-img-06.jpg"/>">
							<img class="img-fluid" src="<c:url value="/template/templateUser/images/gallery-img-06.jpg"/>" alt="Gallery Images">
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Gallery -->
	