<%-- 
    Document   : thanhToan
    Created on : Sep 4, 2022, 1:06:58 AM
    Author     : hdao2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
    <h3 class="text-center" style="padding: 10px">Chi tiết đơn hàng</h3>

    <div class="alert alert-success">
        <strong>Success!</strong> Chúng tôi sẽ liên lạc với bạn qua số điện thoại sớm nhất có thể để xác nhận thông tin một lần nữa.
    </div>

    <ul style="list-style-type: none; border-right: solid #9c9c9c 1px; width: 30%; display: inline-block">
        <li>
            <span style="font-weight: bold">${hoaDon.idTiecCuoi.idKhachHang.tenKH}</span>
        </li>
        <li>
            <span>${hoaDon.idTiecCuoi.idKhachHang.sdt}</span>
        </li>
        <li>
            <span>${hoaDon.idTiecCuoi.idKhachHang.email}</span>
        </li>
    </ul>
    <ul style="list-style-type: none; width: 30%; display: inline-block">
        <li>
            <span>Ngày hẹn gặp trực tiếp: <b><fmt:formatDate pattern="dd/MM/yyyy HH:ss" value="${hoaDon.idTiecCuoi.ngayDatHen}" /></b></span>
        </li>
        <li>
            <span>Ngày tổ chức tiệc: <fmt:formatDate pattern="dd/MM/yyyy" value="${hoaDon.idTiecCuoi.ngayToChuc}" /></span>
        </li>
        <li>
            <span>Số bàn ước lượng: ${hoaDon.idTiecCuoi.soBan}</span>
        </li>
    </ul>
    <ul style="list-style-type: none; background-color: beige; padding: 2rem">
        <li class="hoaDon">
            <span>Sảnh ${hoaDon.idTiecCuoi.idSanh.tenSanh} </span>
            <span><fmt:formatNumber value="${hoaDon.idTiecCuoi.idSanh.giaToiThieu}" maxFractionDigits="3" type = "number" /> VND</span>
        </li>

        <c:forEach items="${dsMonAn}" var="monAn">
            <li class="hoaDon">
                <span>Món ${monAn.idMonAn.ten} </span>
                <span>${hoaDon.idTiecCuoi.soBan} x <fmt:formatNumber value="${monAn.idMonAn.gia}" maxFractionDigits="3" type = "number" /> VND</span>
            </li>
        </c:forEach>

        <c:forEach items="${dsDichVu}" var="dichVu">
            <li class="hoaDon">
                <span>${dichVu.idDichVu.tenDichVu} </span>
                <span><fmt:formatNumber value="${dichVu.idDichVu.giaDichVu}" maxFractionDigits="3" type = "number" /> VND</span>
            </li>
        </c:forEach>

        <li class="hoaDon" style="margin: 10px 0; font-weight: bold">
            <span>Tổng tiền dự kiến: </span>
            <span style="font-size: 18px; color: orangered"><fmt:formatNumber value="${hoaDon.tongGia}" maxFractionDigits="3" type = "number" /> VND</span>
        </li>
    </ul>
        
        <div class="alert alert-light">
            Đây chỉ là đặt tiệc dự kiến, bạn có thể thay đổi thông tin và dịch vụ đã đặt trong ngày gặp mặt trực tiếp tại nhà hàng của chúng tôi.
        </div>
        
        <a href="<c:url value="/" />" class="btn w3-deep-orange w3-hover-text-black w3-hover-amber text-white">Về trang chủ</a>
</div>
<script src="<c:url value="/js/datTiec.js" />"></script>