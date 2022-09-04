<%-- 
    Document   : nhanvien
    Created on : Aug 31, 2022, 8:03:21 PM
    Author     : Minh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h1 class="text-center text-danger">Quan Ly Nhan Vien</h1>
<c:url value="/admin/nhanvien" var="action"/>

<div class ="container">
    <form:form method="post" action="${action}" modelAttribute="nhanvien">
        <div class="form-group">
            <label>Ho Ten</label>
            <form:input type="text" id="hoTen" path="hoTen" class="form-control"/>
        </div>
        <div class="form-group">
            <label>Ngay Sinh</label>
            <form:input type="date" id="ngaySinh" path="ngaySinh" class="form-control"/>
        </div>
        <div class="form-group">
            <label>So Dien Thoai</label>
            <form:input type="text" id="sdt" path="sdt" class="form-control"/>
        </div>
        <div class="form-group">
            <label>Email</label>
            <form:input type="email" id="email" path="email" class="form-control"/>
        </div>
        <div>
            <label>Dia Chi</label>
            <form:input type="text" id="diaChi" path="diaChi" class="form-control"/>
        </div>
        <div class="form-group">
            <input type="submit" value="Them" class="btn btn-danger"/>
        </div>
    </form:form>
</div>



    