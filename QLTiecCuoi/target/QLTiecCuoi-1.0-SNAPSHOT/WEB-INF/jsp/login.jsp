<%-- 
    Document   : login
    Created on : Aug 26, 2022, 5:53:00 PM
    Author     : Minh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h1 class="text-center text-danger">ĐĂNG NHẬP</h1>


<c:url value="/login" var="action"/>

    <c:if test="${param.error !=null}">
        <div class="alert alert-danger">
            Đã có lỗi xảy ra, vui lòng thử lại sau!
        </div>  
    </c:if>

    <c:if test="${param.accessDenied != null}">
        <div class="alert alert-danger">
            Bạn không có quyền truy cập!!!
        </div>  
    </c:if>
    <div class ="container">  

<form method="post" action="${action}"> 
    <div class="form-group">
        <label>Username</label>
        <input type="text" id="username" name="username" class="form-control"/>
    </div>

    <div class="form-group">
        <label>Password</label>
        <input type="password" id="password" name="password" class="form-control"/>
    </div>

    <div class="form-group">
        <input type="Submit" value="Dang Nhap" class="btn btn-danger"/>
    </div>
</div>    
</form>


