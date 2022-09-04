<%-- 
    Document   : qlsanhcuoi
    Created on : Sep 2, 2022, 1:12:17 AM
    Author     : Minh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<h1 class="text-center text-danger">Quan Ly Sanh Cuoi</h1>

<c:url value="/admin/qlsanhcuoi" var="action"/>

<c:if test="${errMsg != null}">
    <div class="alert alert-danger">
        ${errMsg}
    </div>
</c:if>

<div class ="container">
    <form:form method="post" action="${action}" modelAttribute="sanhCuoi" enctype="multipart/form-data">
            
        <div class="form-group">
            <label>Ten Sanh</label>
            <form:input type="text" id="tenSanh" path="tenSanh" cssClass="form-control"/>
        </div>
        <div class="form-group">
            <label>Gia Toi Thieu</label>
            <form:input type="text" id="giaToiThieu" path="giaToiThieu" cssClass="form-control"/>
        </div>
        <div class="form-group">
            <label>Mo Ta</label>
            <form:textarea type="text" id="moTa" path="moTa" cssClass="form-control"/>
        </div>
        <div class="form-group">
            <label>Dien Tich</label>
            <form:input type="text" id="dienTich" path="dienTich" cssClass="form-control"/>
        </div>
        <div class="form-group">
            <label>So Luong Ban</label>
            <form:input type="text" id="soLuongBan" path="soLuongBan" cssClass="form-control"/>
        </div>
        <div class="form-group">
            <label>Hinh Anh</label>
            <form:input type="file" id="file" path="file" cssClass="form-control"/>
        </div>
        <div class="form-group">
            <input type="Submit" value="Them" class="btn btn-danger"/>
        </div>
        
    </form:form>
    
    <table class="table">
        <tr>
            <th>Ten Sanh</th>
            <th>Gia Toi Thieu</th>
            <th>Mo Ta</th>
            <th>Dien Tich</th>
            <th>So Luong Ban</th>
            <th>Hinh Anh</th>
        </tr>
        <tbody id="adminSanhCuoi">

        </tbody>
    </table>

    <script src="<c:url value="/js/sanhcuoi.js" />"></script>
    <script>
        <c:url value="/api/qlsanhcuoi" var="endpoint" />
        window.onload = function (){
            loadAdminSanhCuoi('${endpoint}');
        }
    </script>
</div>
