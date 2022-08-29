<%-- 
    Document   : login
    Created on : Aug 26, 2022, 5:53:00 PM
    Author     : Minh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h1 class="text-center text-danger">DANG NHAP</h1>

<c:if test="${param.error !=null}">
    <div class="alert alert-danger">
        Da có loi xay ra, vui long quay lai sau!
    </div>  
</c:if>

<c:url value="/login" var="action"/>

<form method="post" action="${action}">
<div class ="container">   
    <div class="form-group">
        <label>Username</label>
        <input type="text" id="username" name="username" class="form-control"/>
    </div>
    
    <div class="form-group">
        <label>Password</label>
        <input type="text" id="password" name="password" class="form-control"/>
    </div>
    
     <div class="form-group">
        <input type="Submit" value="Dang Nhap" class="btn btn-danger"/>
    </div>
</div>    
</form>


