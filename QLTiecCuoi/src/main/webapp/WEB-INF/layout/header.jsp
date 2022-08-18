<%-- 
    Document   : header
    Created on : Aug 18, 2022, 12:48:29 PM
    Author     : hdao2
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-sm navbar-dark bg-light">
    <div class="container-fluid">
        
        <div class="offcanvas offcanvas-start" id="demo">
            <div class="offcanvas-header">
                <h1 class="offcanvas-title">Wedding Funny</h1>
                <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"></button>
            </div>
            <div class="offcanvas-body">
                <ul class="navbar-nav me-auto flex-column">
                <c:forEach items="${loaiSanh}" var="c">
                    <li class="nav-item">
                        <a class="nav-link text-dark" href="#">${c.tenLoaiSanh}</a>
                    </li>
                </c:forEach>
            </ul>
            </div>
        </div>

        <!-- Button to open the offcanvas sidebar -->
        <button class="btn btn-light" type="button" data-bs-toggle="offcanvas" data-bs-target="#demo" style="font-size: x-large">
            	&#9776;
        </button>
        
        <a class="navbar-brand text-warning" href="javascript:void(0)"><b>Wedding</b></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        
        <div class="collapse navbar-collapse" id="mynavbar">
            <ul class="navbar-nav me-auto">
                <c:forEach items="${loaiSanh}" var="c">
                    <li class="nav-item">
                        <a class="nav-link text-dark" href="#">${c.tenLoaiSanh}</a>
                    </li>
                </c:forEach>
            </ul>
            <c:url value="/" var="action" />
            <form action="${action}" class="d-flex">
                <input class="form-control me-2" type="text" name="kw" placeholder="Search">
                <button type="submit" class="btn btn-primary" type="button">Search</button>
            </form>
        </div>
    </div>
</nav>
