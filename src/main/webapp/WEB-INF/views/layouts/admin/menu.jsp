<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- Sidenav -->
    <nav class="sidenav navbar navbar-vertical  fixed-left  navbar-expand-xs navbar-light bg-white" id="sidenav-main">
        <div class="scrollbar-inner">
            <!-- Brand -->
            <div class="sidenav-header  align-items-center">
                <a class="navbar-brand" href="quan-ly">
                    <img src="<c:url value="/template/templateAdmin/assets/img/brand/admin.png" />" class="navbar-brand-img" alt="...">

                </a>
            </div>
            <div class="navbar-inner">
                <!-- Collapse -->
                <div class="collapse navbar-collapse" id="sidenav-collapse-main">
                    <!-- Nav items -->
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" href="hompage">
                                <i class="ni ni-tv-2 text-primary"></i>
                                <span class="nav-link-text">AdminManage</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="chitiethoadon">
                                <i class="ni ni-bullet-list-67 text-default"></i>
                                <span class="nav-link-text">Quản lý CTHD</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="hoadon">
                                <i class="ni ni-album-2 text-default"></i>
                                <span class="nav-link-text">Quản lý hóa đơn</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="sanpham">
                                <i class="ni ni-ruler-pencil text-info"></i>
                                <span class="nav-link-text">Sản phẩm</span>
                            </a>

                        </li>
                     <li class="nav-item">
                            <a class="nav-link" href="loaisanpham">
                                <i class="ni ni-shop"></i>
                                <span class="nav-link-text">Loại sản phẩm</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="taikhoan-user">
                                <i class="ni ni-single-02 text-purple"></i>
                                <span class="nav-link-text">Người dùng</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="taikhoan-admin">
                                <i class="ni ni-circle-08 text-pink"></i>
                                <span class="nav-link-text">Admin</span>
                            </a>
                        </li>
                      

                    </ul >
                   
                    <!-- Divider -->
                    <hr class="my-3">
                     <ul class="navbar-nav">
                    <li class="nav-item">
                            <a class="nav-link" href="logoutadmin">
                                <i class="ni ni-button-power"> <span class="nav-link-text">Thoát</span> </i>
                               
                            </a>
                        </li>
                    </ul>
                    <!-- Heading -->

                </div>
            </div>
        </div>
    </nav>
   