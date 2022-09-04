<%-- 
    Document   : header
    Created on : Aug 18, 2022, 12:48:29 PM
    Author     : hdao2
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 

<nav class="navbar navbar-expand-sm bg-light justify-content-center" 
     style="width: 100%; position: fixed; top: 0; left: 0; z-index: 7000;">
    <div class="container-fluid">

        <div class="offcanvas offcanvas-start" id="demo">
            <div class="offcanvas-header">
                <h1 class="offcanvas-title text-warning" style="font-family: emoji; margin: auto">Marry me</h1>
                <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"></button>
            </div>
            <div class="offcanvas-body">
                <ul class="navbar-nav me-auto flex-column">
                    <li class="nav-item">
                        <a class="nav-link text-dark w3-hover-text-orange menu" 
                           href="<c:url value="/" />">
                            Trang chủ
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-dark w3-hover-text-orange menu" 
                           href="<c:url value="/sanhcuoi" />">
                            Sảnh cưới
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-dark w3-hover-text-orange menu" 
                           href="<c:url value="/dichvu" />">
                            Dịch vụ
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-dark w3-hover-text-orange menu" 
                           href="<c:url value="/thucdon" />">
                            Thực đơn
                        </a>
                    </li>
                </ul>

                <a class="btn btn-warning btn-lg w3-hover-text-orange w3-hover-white text-white" 
                        style="position: absolute; bottom: 130px; margin-left: 95px"
                        href="<c:url value="/tieccuoi"/>">
                    <b>ĐẶT TIỆC NGAY</b>
                </a>

                <ul class="nav justify-content-end" style="position: absolute; bottom: 30px; margin-left: 30px">
                    <li class="nav-item">
                        <a class="nav-link text-dark w3-hover-text-orange" href="#">Giới thiệu</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-dark w3-hover-text-orange" href="#">Tuyển dụng</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-dark w3-hover-text-orange" href="<c:url value="/phanHoi"/>">Phản hồi</a>
                    </li>
                </ul>
            </div>
        </div>

        <!-- Button to open the offcanvas sidebar -->
        <button class="btn btn-light" type="button" data-bs-toggle="offcanvas" data-bs-target="#demo" style="font-size: xx-large">
            &#9776;
        </button>

        <a class="navbar-brand text-warning" href="javascript:void(0)" style="margin-left: 200px; font-size: 24px">
            <b>Nhà hàng tiệc cưới MARRY ME</b>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
            <span class="navbar-toggler-icon"></span>
        </button>

        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="btn btn-warning text-white" href="<c:url value="/tieccuoi"/>"><b>ĐẶT TIỆC NGAY</b></a>
            </li>
            
            <c:if test="${pageContext.request.userPrincipal.name == null}">
                <li class="nav-item" style="margin: 0 5px">
                    <a class="btn text-dark btn-outline-secondary w3-hover-text-white" href="<c:url value="/login" />"><b>Đăng nhập</b></a>
                </li>
            </c:if>
            <c:if test="${pageContext.request.userPrincipal.name != null}">
                <li class="nav-item" style="margin: 0 5px">
                    <a class="btn text-dark btn-outline-secondary w3-hover-text-white" href="<c:url value="/" />">${pageContext.request.userPrincipal.name}</a>
                </li>
                <li class="nav-item" style="margin: 0 5px">
                    <a class="btn text-dark btn-outline-secondary w3-hover-text-white" href="<c:url value="/logout" />">Ðang Xuat</a>
                </li>
            </c:if>

            <li class="nav-item" style="margin: 0 5px">
                <a class="btn text-dark btn-outline-secondary w3-hover-text-white" href="<c:url value="/register" />"><b>Đăng Ký</b></a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-dark w3-hover-text-orange" href="#"><b>VI</b></a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-dark w3-hover-text-orange" href="#"><b>EN</b></a>
            </li>
        </ul>
    </div>
</nav>

