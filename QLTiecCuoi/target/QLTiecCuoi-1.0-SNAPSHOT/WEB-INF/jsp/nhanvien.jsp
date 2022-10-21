<%-- 
    Document   : nhanvien
    Created on : Sep 25, 2022, 9:54:23 PM
    Author     : Minh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<h1 class="text-center text-danger">QUẢN LÝ NHÂN VIÊN</h1>

<c:if test="${errMsg != null}">
    <div class="alert alert-danger">
        ${errMsg}
    </div>
</c:if>

<c:url value="/admin/nhanvien" var="action"/>

<div class ="container">
    <form:form method="post" action="${action}" enctype="multipart/form-data" modelAttribute="nhanvien">

        <div class="form-group" >
            <label>THÔNG TIN</label>
        </div>
        <div class="form-group">
            <label>Họ tên</label>
            <form:input type="text" id="hoTen" path="hoTen" class="form-control"/>
        </div>
        <div class="form-group">
            <label>Ngày sinh</label>
            <form:input type="date" id="ngaySinh" path="ngaySinh" class="form-control"/>
        </div>
        <div class="form-group">
            <label>Giới tính</label>
            <form:select class="form-select" aria-label=".form-select-lg example" id="gioiTinh" path="gioiTinh">
                <option selected value="Nam">Nam</option>
                <option value="Nu">Nữ</option>
            </form:select>
        </div>
        <div class="form-group">
            <label>Địa chỉ</label>
            <form:input type="text" id="diaChi" path="diaChi" class="form-control"/>
        </div>
        <div class="form-group">
            <label>Số điện thoại</label>
            <form:input type="text" id="sdt" path="sdt" class="form-control"/>
        </div>

        <div class="form-group">
            <label>Email</label>
            <form:input type="text" id="email" path="email" class="form-control"/>
        </div>
        <div class="form-group">
            <label>Avatar</label>
            <form:input type="file" id="file" path="file" cssClass="form-control"/>
        </div>

        <div class="form-group">
            <label>TÀI KHOẢN</label>
        </div>
        <div class="form-group">
            <label>Username</label>
            <form:input type="text" id="username" path="username" class="form-control"/>
        </div>

        <div class="form-group">
            <label>Password</label>
            <form:input type="password" id="password" path="password" class="form-control"/>
        </div>

        <div class="form-group">
            <label>Confirm Password</label>
            <form:input type="password" id="confirm-password" path="confirmPassword" class="form-control"/>
        </div>


        <div class="form-group">
            <label>Phân quyền</label>
            <form:select class="form-select" aria-label=".form-select-lg example" id="userRole" path="userRole">
                <option selected value="ROLE_EMPLOYEE">Nhân viên</option>
                <option value="ROLE_USER">Khách hàng</option>
                <option value="ROLE_ADMIN">Admin</option>

            </form:select>
        </div>

        <div class="form-group">
            <input type="Submit" value="Thêm" class="btn btn-danger"/>
        </div>

    </form:form>


    <table class="table">
        <tr>
            <th>Họ tên</th>
            <th>Ngày sinh</th>
            <th>Giới tính</th>
            <th>Địa chỉ</th>  
            <th>Số điện thoại</th>
            <th>Email</th>
            <th>Phân quyền</th>

        </tr>

        <tbody id="adminNhanvien">

        </tbody>
    </table>

    <div class="modal" id="myModalUpdateNhanVien" style="margin-top: 50px">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Cập nhật nhân viên</h4>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    <div class="row g-3">
                        <div class="form-group">
                            <label>Họ tên</label>
                            <input type="text" id="hoTen1" path="hoTen" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label>Ngày sinh</label>
                            <input type="date" id="ngaySinh1" path="ngaySinh" class="form-control"/>
                        </div>
                        <div class="form-check form-check-inline">
                            <select class="form-select" aria-label=".form-select-lg example" id="userRole" path="userRole">
                                <option selected value="Nam">Nam</option>
                                <option value="Nu">Nữ</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Địa chỉ</label>
                            <input type="text" id="diaChi1" path="diaChi" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label>Số điện thoại</label>
                            <input type="text" id="sdt1" path="sdt" class="form-control"/>
                        </div>

                        <div class="form-group">
                            <label>Email</label>
                            <input type="text" id="email1" path="email" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label>Phân quyền</label>
                            <select class="form-select" aria-label=".form-select-lg example" id="userRole" path="userRole">
                                <option selected value="ROLE_EMPLOYEE">Nhân viên</option>
                                <option value="ROLE_USER">Khách hàng</option>
                                <option value="ROLE_ADMIN">Admin</option>
                            </select>
                        </div>
                    </div>
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button id="updateNV" class="btn btn-primary">
                        Sửa
                    </button>
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                </div>

            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/moment@2.24.0/moment.min.js"></script>
    <script src="<c:url value="/js/nhanvien.js" />"></script>
    <script>
        <c:url value="/api/nhanvien" var="endpoint" />
        window.onload = function () {
            loadAdminNhanvien('${endpoint}');
        }
    </script>

</div>

