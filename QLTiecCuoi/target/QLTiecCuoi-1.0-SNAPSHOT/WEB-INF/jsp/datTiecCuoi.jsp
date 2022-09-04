<%-- 
    Document   : datTiecCuoi
    Created on : Aug 31, 2022, 9:39:00 PM
    Author     : hdao2
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container">
    <h2 class="text-center" style="padding: 20px 0">ĐẶT TIỆC</h2>
    <form>
        <h4 class="text-center w3-khaki">Thông tin cá nhân</h4>
        <div class="row">
            <div class="col">
                <label>Họ và tên: </label>
                <input id="tenKH" type="text" class="form-control" placeholder="Nhập họ và tên..." name="tenKH">
            </div>
            <div class="col">
                <label>Số điện thoại: </label>
                <input id="sdtKH" type="number" class="form-control" placeholder="Nhập số điện thoại..." name="sdtKH">
            </div>
            <div class="col">
                <label>Email: </label>
                <input id="emailKH" type="email" class="form-control" placeholder="Nhập email..." name="emailKH">
            </div>
            <div class="col">
                <label>Ngày giờ tổ chức: </label>
                <input id="ngayToChuc" type="datetime-local" class="form-control" name="ngayToChuc">
            </div>
            <div class="col">
                <label>Số bàn tổ chức: </label>
                <input id="soBan" type="number" class="form-control"  placeholder="Số lượng bàn..." name="soBan">
            </div>
            <div style="margin-top: 20px">
                <label>Ghi chú: </label>
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


                        <!--<option value="${s.idSanhCuoi}">${s.tenSanh}</option>-->


            </c:forEach>
            <!--</select>-->
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
                            <input type="checkbox" class="form-check-input" id="check${ma.id}" name="optionMA" value="${ma.id}">
                            <label class="form-check-label" for="check${ma.id}">${ma.ten}</label>
                        </div>
                    </c:if>
                </c:forEach>
            </c:forEach>
        </div>
        <input id="btnDatTiec" style="margin-top: 20px" type="button" onclick="addDonDatTiec()" value="Tiếp" class="btn btn-danger btn-lg" />
        <div id="spinnerDatTiec" style="margin-top: 20px" class="spinner-border text-warning"></div>
    </form>
</div>

<script src="<c:url value="/js/datTiec.js" />"></script>
