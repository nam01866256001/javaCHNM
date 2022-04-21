	<!-- Start Menu -->
	<div class="menu-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center"></div>
				</div>
			</div>

			<div class="row inner-menu-box">
				<div class="col-3">
					<div class="nav flex-column nav-pills" id="v-pills-tab"
						role="tablist" aria-orientation="vertical">

						<a class="nav-link active" id="v-pills-home-tab"
							 href="/trasua/menu" role="tab"
							aria-controls="v-pills-home" aria-selected="true">All</a>

						<c:forEach var="loaisanpham" items="${loaisanpham}">
							<a class="nav-link" id="v-pills-profile-tab" 
								href="/trasua/SPcategory/${ loaisanpham.maLoaiSanPham }" role="tab"
								aria-controls="v-pills-profile" aria-selected="false" >${ loaisanpham.tenLoaiSanPham }</a>
						</c:forEach>

					</div>
				</div>

				<div class="col-9">
					<div class="tab-content" id="v-pills-tabContent">
						<div class="tab-pane fade show active" id="v-pills-home"
							role="tabpanel" aria-labelledby="v-pills-home-tab">
							<div class="row">
								<c:forEach var="item" items="${ ProductsPaginate }">
									<div class="col-lg-4 col-md-6 special-grid drinks">
										<div class="gallery-single fix">
										
											<img
												src="<c:url value="/template/templateUser/images/${item.hinhAnh }"/>"
												class="img-fluid" alt="Image">
											<div class="why-text">
												<h4>${item.tenSanPham}</h4>
												<h5>${item.giaBan}</h5>
												<a href="/trasua/ProductDetail/${item.maSanPham}"><button
														style="color: white; background-color: #D65106; border-color: #D65106;">Chi
														tiết sản phẩm</button></a>
												<a href="/trasua/addCart/${item.maSanPham}"><button
														style="color: white; background-color: #D65106; border-color: #D65106;">Thêm vào giỏ hàng</button></a>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
			
	<div class="shop_pagination_area wow fadeInUp">
							<nav aria-label="Page navigation">
								<c:if test="${ (ProductsPaginate) != null }">
									<ul class="pagination pagination-sm">

										<li class="page-item"><a class="page-link"
											href="<c:url value='/menu/page=1'/>">&laquo;</a> <c:forEach
												var="item" begin="1" end="${ paginateInfo.totalPage }"
												varStatus="loop">
												<c:if test="${ (loop.index) == paginateInfo.currentPage }">
													<li class="page-item active"><a class="page-link"
														href="<c:url value='/menu/page=${ loop.index }'/>">${ loop.index }</a></li>
												</c:if>
												<c:if test="${ (loop.index) != paginateInfo.currentPage }">
													<li class="page-item"><a class="page-link"
														href="<c:url value='/menu/page=${ loop.index }'/>">${ loop.index }</a></li>
												</c:if>
											</c:forEach>
										<li class="page-item"><a class="page-link"
											href="<c:url value='/menu/page=${ paginateInfo.totalPage }'/>">&raquo;</a></li>

									</ul>
								</c:if>

							</nav>
						</div>
		</div>
	</div>
	
	<!-- End Menu -->
