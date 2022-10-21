<%-- 
    Document   : qlsanhcuoi
    Created on : Sep 2, 2022, 1:12:17 AM
    Author     : Minh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<h1 class="text-center text-danger">QUẢN LÝ SẢNH CƯỚI</h1>

<c:url value="/admin/qlsanhcuoi" var="action"/>

<c:if test="${errMsg != null}">
    <div class="alert alert-danger">
        ${errMsg}
    </div>
</c:if>

<div class ="container">
    <form:form method="post" action="${action}" modelAttribute="sanhCuoi" enctype="multipart/form-data">
            <form:errors path="*" cssClass="alert alert-danger" element="div"/>
        <div class="form-group">
            <label for="tenSanh">Tên sảnh</label>
            <form:input type="text" id="tenSanh" path="tenSanh" cssClass="form-control"/>
            <form:errors path="tenSanh" cssClass="alert alert-danger" element="div"/>
        </div>
        <div class="form-group">
            <label for="giaToiThieu">Giá tối thiểu</label>
            <form:input type="number" id="giaToiThieu" path="giaToiThieu" cssClass="form-control"/>
            <form:errors path="giaToiThieu" cssClass="alert alert-danger" element="div"/>
        </div>
        <div class="form-group">
            <label for="moTa">Mô tả</label>
            <form:textarea type="text" id="moTa" path="moTa" cssClass="form-control"/>
            <form:errors path="moTa" cssClass="alert alert-danger" element="div"/>
        </div>
        <div class="form-group">
            <label for="dienTich">Diện tích</label>
            <form:input type="number" id="dienTich" path="dienTich" cssClass="form-control"/>
            <form:errors path="dienTich" cssClass="alert alert-danger" element="div"/>
        </div>
        <div class="form-group">
            <label for="soLuongBan">Số luợng bàn</label>
            <form:input type="number" id="soLuongBan" path="soLuongBan" cssClass="form-control"/>
            <form:errors path="soLuongBan" cssClass="alert alert-danger" element="div"/>
        </div>
        <div class="form-group">
            <label>Ảnh</label>
            <form:input type="file" id="file" path="file" cssClass="form-control"/>
        </div>
        <div class="form-group">
            <label for="idSanhCuoi"></label>
            <form:input type="number" id="idSanhCuoi" path="idSanhCuoi" cssClass="form-control" disabled="true"/>
            <form:errors path="idSanhCuoi" cssClass="alert alert-danger" element="div"/>
        </div>
        <div class="form-group">
            <input type="submit" value="Thêm" class="btn btn-danger"/>
        </div>
        
    </form:form>
    
    <table class="table">
        <tr>
            <th>Tên sảnh</th>
            <th>Giá tối thiểu</th>
            <th>Mô tả</th>
            <th>Diện tích</th>
            <th>Số lượng bàn</th>
            <th>Hình ảnh</th>
        </tr>
        <tbody id="adminSanhCuoi">

        </tbody>
    </table>
    
    <div style="margin-top: 100px" class="modal fade" id="myModalUpdateNhanVien">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">CẬP NHẬT SẢNH CƯỚI</h4>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    <div class="row g-3">
                        <div class="form-group">
                            <label>Tên Sảnh</label>
                            <input type="text" id="tenSanh1" path="tenSanh1" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label>Giá tối thiểu</label>
                            <input type="number" id="giaToiThieu1" path="giaToiThieu1" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label>Mô tả</label>
                            <input type="text" id="moTa1" path="moTa1" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label>Diện tích</label>
                            <input type="text" id="dienTich1" path="dienTich1" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label>Số lượng bàn</label>
                            <input type="text" id="soLuongBan1" path="soLuongBan1" class="form-control"/>
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
    
</div>
    <script src="<c:url value="/js/sanhcuoi.js" />"></script>
    <script>
        <c:url value="/api/qlsanhcuoi" var="endpoint" />
        window.onload = function (){
            loadAdminSanhCuoi('${endpoint}');
        }
    </script>

