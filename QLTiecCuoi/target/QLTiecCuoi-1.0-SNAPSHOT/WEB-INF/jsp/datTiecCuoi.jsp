<%-- 
    Document   : datTiecCuoi
    Created on : Aug 31, 2022, 9:39:00 PM
    Author     : hdao2
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container">
    <h2 class="text-center" style="padding: 20px 0">ĐẶT TIỆC</h2>

    <c:if test="${err !=null}">
        <div class="alert alert-danger">
            ${err}
        </div>  
    </c:if>

    <h4 class="text-center w3-khaki">Thông tin cá nhân</h4>
    <div class="row">
        <div class="col">
            <label for="tenKH">Họ và tên: </label>
            <input id="tenKH" type="text" class="form-control" required="true"
                   placeholder="Nhập họ và tên..." name="tenKH" value="${khachHang.hoTen}">
        </div>
        <div class="col">
            <label for="sdtKH">Số điện thoại: </label>
            <input id="sdtKH" type="number" class="form-control" 
                   placeholder="Nhập số điện thoại..." name="sdtKH" value="${khachHang.sdt}" required="true">
        </div>
        <div class="col">
            <label for="emailKH">Email: </label>
            <input id="emailKH" type="email" class="form-control" placeholder="Nhập email..." 
                   name="emailKH" value="${khachHang.email}" required="true">
        </div>
        <div class="col">
            <label for="ngayToChuc">Ngày giờ tổ chức: </label>
            <input id="ngayToChuc" type="datetime-local" class="form-control" name="ngayToChuc" required="true">
        </div>
        <div class="col">
            <label for="ngayToChuc">Ngày hẹn gặp: </label>
            <input id="ngayDatHen" type="datetime-local" class="form-control" name="ngayDatHen" required="true">
        </div>
        <div style="margin-top: 20px">
            <label for="chitTiet">Ghi chú: </label>
            <textarea class="form-control" id="chitTiet" class="form-control" value="Ghi Chu"></textarea>
        </div>
    </div>



    <div class="row" style="margin-top: 30px">
        <h4 class="text-center w3-khaki">Thông tin Sảnh cưới</h4>
        <!--<select class="form-select" id="idSanh">-->
        <c:forEach items="${sanhCuoi}" var="s">
            <div id="idSanh" class="form-check col-md-2" style="padding: 5px">
                <input type="radio" class="form-check-input" id="idSanh${s.idSanhCuoi}" 
                       name="optradio" value="${s.idSanhCuoi}">
                <label class="form-check-label" for="idSanh${s.idSanhCuoi}">${s.tenSanh}</label>
            </div>

        </c:forEach>
        <div style="margin-top: 20px" class="alert alert-warning">
            Sảnh cưới bạn chọn có thể không còn trống!!!
        </div>

        <div class="row" style="width: 30%; margin: auto; margin-top: 40px">
            <label class="col" for="soBan">Số bàn tổ chức: </label>
            <select id="soBan" class="form-select col"> 
                <option value="15" selected="selected">Từ 10-19 bàn</option>
                <option value="25">Từ 20-29 bàn</option>
                <option value="35">Từ 30-39 bàn</option>
                <option value="45">Từ 40-49 bàn</option>
                <option value="55">Từ 50-59 bàn</option>
                <option value="65">Từ 60-69 bàn</option>
                <option value="75">Từ 70-79 bàn</option>
                <option value="85">Từ 80-89 bàn</option>
                <option value="95">Từ 90-99 bàn</option>
                <option value="100">Trên 100 bàn</option>
            </select>
        </div>

        <!--        <div>
                    <label for="soBan">Số bàn tổ chức: </label>
                    <input id="soBan" type="number" class="form-control"  name="soBan" max="150">
                </div>-->
    </div>



    <div class="row" style="margin-top: 30px">
        <h4 class="text-center w3-khaki">Thông tin Dịch vụ</h4>
        <c:forEach items="${loaidichvu}" var="l">
            <h5 style="margin-top: 20px">${l.tenLoaiDichVu}</h5>
            <c:forEach items="${dichvu}" var="dv">
                <c:if test="${l.idloaidichvu == dv.loaiDichVu.idloaidichvu}" >
                    <div class="form-check col-md-3" style="padding: 5px">
                        <input type="checkbox" class="form-check-input" id="check${dv.idDichVu}" name="optionDV" value="${dv.idDichVu}">
                        <label class="form-check-label" for="check${dv.idDichVu}">${dv.tenDichVu}</label>
                    </div>
                </c:if>
            </c:forEach>
        </c:forEach>
    </div>

    <div class="row" style="margin-top: 30px">
        <h4 class="text-center w3-khaki">Thông tin Thực đơn</h4>
        <c:forEach items="${loaimon}" var="l">
            <h5 style="margin-top: 20px">Món ${l.tenLoaiMon}</h5>
            <c:forEach items="${monan}" var="ma">
                <c:if test="${l.idThucDon == ma.idThucDon.idThucDon}" >
                    <div class="form-check col-md-3" style="padding: 5px">
                        <input type="checkbox" class="form-check-input" id="checkma${ma.id}" name="optionMA" value="${ma.id}">
                        <label class="form-check-label" for="checkma${ma.id}">${ma.ten}</label>
                    </div>
                </c:if>
            </c:forEach>
        </c:forEach>
    </div>
    <div style="margin-top: 20px" class="alert alert-warning">
        Đây chỉ là đặt tiệc dự kiến, bạn có thể thay đổi thông tin và dịch vụ đã đặt trong ngày gặp mặt trực tiếp tại nhà hàng của chúng tôi.
    </div>
    <input id="btnDatTiec" style="margin-top: 20px" type="submit" value="Tiếp" class="btn btn-danger btn-lg" onclick="addDonDatTiec()" />
    <div id="spinnerDatTiec" style="margin-top: 20px; display: none" class="spinner-border text-warning"></div>
</div>

<script src="<c:url value="/js/datTiec.js" />"></script>
