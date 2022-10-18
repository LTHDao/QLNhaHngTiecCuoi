<%-- 
    Document   : themDichVu
    Created on : Aug 27, 2022, 10:59:49 PM
    Author     : Minh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<h1 class="text-center text-danger">Quan Ly Dich Vu</h1>

<c:url value="/admin/qldichvu" var="action"/>

<c:if test="${errMsg != null}">
    <div class="alert alert-danger">
        ${errMsg}
    </div>
</c:if>

<div class ="container">
    <form:form method="post" action="${action}" modelAttribute="dichvu" enctype="multipart/form-data">
        <form:errors path="*" cssClass="alert alert-danger" element="div"/>
        <div class="form-group">
            <label>Ten Dich Vu</label>
            <form:input type="text" id="tenDichVu" path="tenDichVu" cssClass="form-control" required="true"/>
            <form:errors path="tenDichVu" cssClass="alert alert-danger" element="div"/>
        </div>
        <div class="form-group">
            <label>Chi Tiet Dich Vu</label>
            <form:textarea type="text" id="chiTiet" path="chiTiet" cssClass="form-control"></form:textarea>

            </div>
            <div class="form-group">
                <label>Gia Dich Vu</label>
            <form:input type="text" id="giaDichVu" path="giaDichVu" cssClass="form-control" required="true"/>
            <form:errors path="giaDichVu" cssClass="alert alert-danger" element="div"/>
        </div>
        <div class="form-group">
            <label>Anh Dich Vu</label>
            <form:input type="file" id="file" path="file" cssClass="form-control" required="true"/>
        </div>
        <div class="form-group">
            <label>Loai Dich Vu</label>
            <form:select id="loaidichVu" path="loaiDichVu" cssClass="form-select">
                <c:forEach items="${loaidichvu}" var="loai">
                    <option value="${loai.idloaidichvu}">${loai.tenLoaiDichVu}</option>
                </c:forEach>
            </form:select>
            <form:errors path="loaiDichVu" cssClass="alert alert-danger" element="div"/>
        </div>
        <div class="form-group">
            <input type="Submit" value="Them" class="btn btn-danger"/>
        </div>
    </form:form>

    <c:url value="/admin/qldichvu" var="action" />
    <form method="get" action="${action}">
        <div class="row">
            <div class="clo-md-10">
                <input class="form-control" type="text" name="kw" placeholder="Nhap tu khoa..."/>
                <input type="submit" value="Search" class="btn-danger"/>
            </div>
        </div>
    </form>

    <table class="table">
        <tr>
            <th></th>
            <th></th>
            <th></th>
            <th></th>         
        </tr>

        <tbody id="adminDichvu">

        </tbody>
    </table>

        <div class="modal" id="myModalUpdateDichVu">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Cap Nhat Dich Vu</h4>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        <div class="row g-3">
                            <div class="form-group">
                                <label>Ten Dich Vu</label>
                                <input type="text" id="tenDichVu1" path="tenDichVu" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>Cho Tiet Dich Vu</label>
                                <input type="text" id="chiTiet1" path="chiTiet" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>Gia Dich Vu</label>
                                <input type="text" id="giaDichVu1" path="giaDichVu" class="form-control"/>
                            </div>
<!--                            <div class="form-group">
                                <label>Anh Dich Vu</label>
                                <input type="file" id="file1" path="file1" class="form-control"/>
                            </div>-->
                            
                        </div>
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button id="updateDV" class="btn btn-primary">
                            Edit
                        </button>
                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                    </div>

                </div>
            </div>
        </div>  

    <script src="<c:url value="/js/dichvu.js" />"></script>
    <script>
        <c:url value="/api/qldichvu" var="endpoint" />
        window.onload = function () {
            loadAdminDichvu('${endpoint}');
        }
    </script>
</div>
