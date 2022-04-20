<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="header bg-primary pb-6">
    <div class="container-fluid">
        <div class="header-body">
            <div class="row align-items-center py-4">
                <div class="col-lg-6 col-7">
                    <h6 class="h2 text-white d-inline-block mb-0">Danh sách nhân viên</h6>

                </div>
                <div class="col-lg-6 col-5 text-right">

                    <a href="@Url.Action("Trash","Admin")" class="btn btn-sm btn-neutral"><i class="fas fa-trash"></i></a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid mt--6">
    <div class="row">
        <div class="col">
            <div class="card">
                <!-- Card header -->
                <div class="card-header border-0">


                </div>
                <!-- Light table -->
                <div class="table-responsive">
                    <table class="table align-items-center table-flush">

                        <thead class="thead-light">
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col" class="sort" data-sort="budget">Tên</th>
                                <th scope="col" class="sort" data-sort="status">Trạng thái</th>
                                <th scope="col" class="sort" data-sort="status">Chức vụ</th>
                                <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody class="list">
                            @foreach (var i in Model)
                            {
                                <tr>
                                    <td>
                                        <div class="media-body">
                                            <span class="name mb-0 text-sm">@i.idAdmin</span>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="media-body">
                                            <span class="name mb-0 text-sm">@i.ten</span>
                                        </div>
                                    </td>
                                    <td>
                                        @if (i.status == 3)
                                        {
                                            <i class="bg-warning"></i>
                                            <span class="status">Xóa</span>
                                        }
                                        else if (i.status == 1)
                                        {
                                            <i class="bg-success"></i>
                                            <span class="status">Hoạt động</span>
                                        }
                                        else if (i.status == 2)
                                        {


                                            <i class="bg-info"></i><span class="status">Ẩn</span>
                                        }
                                        else if (i.status == 0)
                                        {
                                            <i class="bg-success"></i>
                                            <span class="status">Chưa kích hoạt</span>
                                        }

                                    </td>

                                    <td>
                                        @if (@i.type == 1)
                                        {
                                            <span class="name mb-0 text-sm">Admin</span>
                                        }
                                        else if (i.type == 0)
                                        {

                                            <span class="name mb-0 text-sm">Người viết bài</span>
                                        }

                                    </td>


                                    <td class="text-right">
                                        <a href="@Url.Action("Details","Admin",new { id= @i.idAdmin })" class="btn btn-sm btn-neutral"><i class="fas fa-eye"></i></a>
                                        <a href="@Url.Action("EditProfileAdmin","Home",new { id= @i.idAdmin })" class="btn btn-sm btn-neutral"><i class="fas fa-edit"></i></a>
                                        @if (i.idAdmin != 1)
                                        {
                                            <a href="@Url.Action("Remove","Admin",new { id= @i.idAdmin })" class="btn btn-sm btn-neutral"><i class="fas fa-minus-circle"></i></a>
                                        }

                                    </td>
                                </tr>
                            }
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
