<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ include file="/taglib/taglib.jsp"%>
<div class="header bg-primary pb-6">
    <div class="container-fluid">
        <div class="header-body">
            <div class="row align-items-center py-4">
                <div class="col-lg-6 col-7">
                    <h6 class="h2 text-white d-inline-block mb-0">Danh sách sản phẩm</h6>
					
                </div>
                <div class="col-lg-6 col-5 text-right">
                    <a href="#" class="btn btn-sm btn-neutral"><i class="fas fa-trash"></i></a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid mt--6">
    <div class="row" style="margin-left: 300px;">
    	
        <div class="col">

            <div class="card">
                <!-- Card header -->
                <div class="card-header border-0">

                    <a href="themsanpham" class="btn btn-round btn-primary"><i class="fas fa-plus-circle"></i></a>
                </div>
             


                <!-- Light table -->
                <div class="table-responsive">
                    <table class="table align-items-center table-flush">
                        <thead class="thead-light">
                            <tr>
                            
                                <th scope="col">#</th>
                                <th scope="col" class="sort" data-sort="budget">Mã Loại Sản Phẩm</th>
                                <th scope="col" class="sort" data-sort="budget">Tên Sản Phẩm</th>
                                <th scope="col" class="sort" data-sort="budget">Giá </th>
                                <th scope="col" class="sort" data-sort="budget">Hình ảnh </th>
                               	<th scope="col"></th>
                               	
                                
                            </tr>
                        </thead>
                       <tbody class="list">
                          <c:forEach var="item" items="${sanpham}">
                            
                                <tr>
                                    <td>
                                        <div class="media-body">
                                            <span class="name mb-0 text-sm">${item.maSanPham }</span>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="media-body">
                                            <span class="name mb-0 text-sm">${item.maLoaiSanPham }</span>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="media-body">
                                            <span class="name mb-0 text-sm">${item.tenSanPham }</span>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="media-body">
                                            <span class="name mb-0 text-sm">${item.giaBan }</span> VNĐ
                                        </div>
                                    </td>
                                    <td>
                                        <div class="media-body">
                                            <img style="height:75px;width:75px" alt="Image news" src="<c:url value="/template/templateUser/images/${item.hinhAnh }"/>">
                                        </div>
                                    </td>
                                  
                                  
                                    <td class="text-right">
                                        <a href="@Url.Action("Details","Product",new { id= @i.maSP })" class="btn btn-sm btn-neutral"><i class="fas fa-eye"></i></a>
                                        <a href="@Url.Action("Edit","Product",new { id= @i.maSP })" class="btn btn-sm btn-neutral"><i class="fas fa-edit"></i></a>
                                        <a href="@Url.Action("Delete","Product",new { id= @i.maSP })" class="btn btn-sm btn-neutral"><i class="fas fa-minus-circle"></i></a>

                                    </td>
                                </tr>
						</c:forEach>
                        </tbody>
                    </table>
                </div>
                <!-- Card footer -->
                <div class="card-footer py-4">

                </div>
            </div>
        </div>
    </div>
</div>