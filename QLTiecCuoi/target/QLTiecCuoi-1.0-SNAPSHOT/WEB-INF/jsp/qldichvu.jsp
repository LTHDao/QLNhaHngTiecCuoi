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
            <form:input type="text" id="tenDichVu" path="tenDichVu" cssClass="form-control"/>
        </div>
        <div class="form-group">
            <label>Chi Tiet Dich Vu</label>
            <form:textarea type="text" id="chiTiet" path="chiTiet" cssClass="form-control"></form:textarea>
            <form:errors path="tenDichVu" cssClass="alert alert-danger" element="div"/>
        </div>
        <div class="form-group">
            <label>Gia Dich Vu</label>
            <form:input type="text" id="giaDichVu" path="giaDichVu" cssClass="form-control"/>
            <form:errors path="giaDichVu" cssClass="alert alert-danger" element="div"/>
        </div>
        <div class="form-group">
            <label>Anh Dich Vu</label>
            <form:input type="file" id="file" path="file" cssClass="form-control"/>
        </div>
        <div class="form-group">
            <label>Loai Dich Vu</label>
            <form:select id="loaidichVu" path="loaiDichVu" cssClass="form-select">
                <c:forEach items="${loaidichvu}" var="loai">
                    <option value="${loai.idloaidichvu}">${loai.tenLoaiDichVu}</option>
                </c:forEach>
            </form:select>
        </div>
        <div class="form-group">
            <input type="Submit" value="Them" class="btn btn-danger"/>
        </div>
    </form:form>

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

    <script src="<c:url value="/js/dichvu.js" />"></script>
    <script>
        <c:url value="/api/qldichvu" var="endpoint" />
        window.onload = function (){
            loadAdminDichvu('${endpoint}');
        }
    </script>
</div>






