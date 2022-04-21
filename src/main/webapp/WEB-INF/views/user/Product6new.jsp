
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
				<c:forEach var="item" items="${sanpham}">
					<div class="col-sm-12 col-md-4 col-lg-4">
					<a href="${item.tensanpham}"></a>
						<%-- <a class="lightbox" href="${item.hinhAnh}">
							<img class="img-fluid" src="${item.hinhAnh}" alt="${item.tenSanPham}"/>
						</a> --%>
					</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<!-- End Gallery -->
