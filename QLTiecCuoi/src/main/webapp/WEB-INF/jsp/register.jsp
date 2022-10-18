<%-- 
    Document   : register
    Created on : Aug 26, 2022, 6:28:19 PM
    Author     : Minh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h1 class="text-center text-danger">DANG KY</h1>

<c:if test="${errMsg != null}">
    <div class="alert alert-danger">
        ${errMsg}
    </div>
</c:if>

<c:url value="/register" var="action"/>

<div class ="container">
    <form:form method="post" action="${action}" enctype="multipart/form-data" modelAttribute="user">

        <div class="form-group">
            <label>Ho Ten</label>
            <form:input type="text" id="hoTen" path="hoTen" class="form-control"/>
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
            <input type="Submit" value="Dang Ky" class="btn btn-danger"/>
        </div>

    </form:form>
</div>



