<%-- 
    Document   : nhanvien
    Created on : Sep 25, 2022, 9:54:23 PM
    Author     : Minh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<h1 class="text-center text-danger">QUAN LY NHAN VIEN</h1>

<c:if test="${errMsg != null}">
    <div class="alert alert-danger">
        ${errMsg}
    </div>
</c:if>

<c:url value="/admin/nhanvien" var="action"/>

<div class ="container">
    <form:form method="post" action="${action}" enctype="multipart/form-data" modelAttribute="nhanvien">

        <div class="form-group" >
            <label>THONG TIN</label>
        </div>
        <div class="form-group">
            <label>Ho Ten</label>
            <form:input type="text" id="hoTen" path="hoTen" class="form-control"/>
        </div>
        <div class="form-group">
            <label>Ngay Sinh</label>
            <form:input type="date" id="ngaySinh" path="ngaySinh" class="form-control"/>
        </div>
        <div class="form-group">
            <label>Gioi Tinh</label>
            <form:select class="form-select" aria-label=".form-select-lg example" id="gioiTinh" path="gioiTinh">
                <option selected value="Nam">Nam</option>
                <option value="Nu">Nu</option>
            </form:select>
        </div>
        <div class="form-group">
            <label>Dia Chi</label>
            <form:input type="text" id="diaChi" path="diaChi" class="form-control"/>
        </div>
        <div class="form-group">
            <label>So Dien Thoai</label>
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
            <label>TAI KHOAN</label>
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
            <label>Phan Quyen</label>
            <form:select class="form-select" aria-label=".form-select-lg example" id="userRole" path="userRole">
                <option selected value="ROLE_EMPLOYEE">Nhan Vien</option>
                <option value="ROLE_USER">Khach Hang</option>
                <option value="ROLE_ADMIN">Admin</option>

            </form:select>
        </div>

        <div class="form-group">
            <input type="Submit" value="Them" class="btn btn-danger"/>
        </div>

    </form:form>


    <table class="table">
        <tr>
            <th>Ho Ten</th>
            <th>Ngay Sinh</th>
            <th>Gioi Tinh</th>
            <th>Dia Chi</th>  
            <th>So Dien Thoai</th>
            <th>Email</th>
            <th>Phan Quyen</th>

        </tr>

        <tbody id="adminNhanvien">

        </tbody>
    </table>

    <div class="modal" id="myModalUpdateNhanVien">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Cap Nhat Nhan Vien</h4>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    <div class="row g-3">
                        <div class="form-group">
                            <label>Ho Ten</label>
                            <input type="text" id="hoTen1" path="hoTen" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label>Ngay Sinh</label>
                            <input type="date" id="ngaySinh1" path="ngaySinh" class="form-control"/>
                        </div>
                        <div class="form-check form-check-inline">
                            <select class="form-select" aria-label=".form-select-lg example" id="userRole" path="userRole">
                                <option selected value="Nam">Nam</option>
                                <option value="Nu">Nu</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Dia Chi</label>
                            <input type="text" id="diaChi1" path="diaChi" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label>So Dien Thoai</label>
                            <input type="text" id="sdt1" path="sdt" class="form-control"/>
                        </div>

                        <div class="form-group">
                            <label>Email</label>
                            <input type="text" id="email1" path="email" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label>Phan Quyen</label>
                            <select class="form-select" aria-label=".form-select-lg example" id="userRole" path="userRole">
                                <option selected value="ROLE_EMPLOYEE">Nhan Vien</option>
                                <option value="ROLE_USER">Khach Hang</option>
                                <option value="ROLE_ADMIN">Admin</option>
                            </select>
                        </div>
                    </div>
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button id="updateNV" class="btn btn-primary">
                        Edit
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

