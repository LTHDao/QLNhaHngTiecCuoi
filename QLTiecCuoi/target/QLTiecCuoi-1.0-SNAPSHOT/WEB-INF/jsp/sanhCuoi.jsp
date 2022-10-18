<%-- 
    Document   : sanhCuoi
    Created on : Aug 19, 2022, 2:21:30 PM
    Author     : hdao2
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div style="background-image: url(https://res.cloudinary.com/btlde1/image/upload/v1660899401/QLNhaHangTiecCuoi/tieccuoi6_xvscmb.jpg);
     width: 100%; height: 450px; background-size: cover;" class="w3-animate-opacity">
    <div class="w3-center text-white w3-animate-bottom" 
         style="padding-top: 170px;font-size: xxx-large; width: 100%; height: 100%; background-image: radial-gradient(#00000070, transparent)">
        <b>SẢNH TIỆC CƯỚI</b>
    </div>
</div>

<div style="height: 700px; margin-top: 50px">
    <!-- Nav tabs -->
    <ul class="nav nav-tabs justify-content-center">
        <li class="nav-item">
            <a class="nav-link active" style="font-size: x-large" data-bs-toggle="tab" href="#home">SẢNH</a>
        </li>
        <c:forEach items="${sanhCuoi}" var="s">
            <li class="nav-item">
                <a class="nav-link" style="font-size: x-large" 
                   data-bs-toggle="tab" href="#menu${s.idSanhCuoi}">
                    ${s.tenSanh}</a>
            </li>
        </c:forEach>
    </ul>

    <!-- Tab panes -->
    <div class="tab-content">
        <div class="tab-pane container active" id="home">
            <h4 style="margin: 50px 0 30px 0; text-align: center">Thông tin sảnh cưới tại Nhà hàng tiệc cưới Marry Me</h4>
            <table class="table table-bordered table-hover"
                   style="width: 80%; margin: auto; font-size: 18px; text-align: center">
                <thead>
                    <tr>
                        <c:forEach items="${chiTiecSanh}" var="i">
                        <th>${i}</th>
                        </c:forEach>
                    </tr>
                </thead>
                <c:forEach items="${sanhCuoi}" var="s">
                <tbody style="margin: 20px">
                    <tr > 
                        <td>${s.tenSanh}</td>
                        <td>${s.dienTich}</td>
                        <td>${s.soLuongBan}</td>
                        <td>${s.giaToiThieu}</td>
                        
                    </tr>
                </tbody>
                </c:forEach>
            </table>
        </div>

        <c:forEach items="${sanhCuoi}" var="s">
            <div class="tab-pane container fade" id="menu${s.idSanhCuoi}"
                 style="margin-top: 30px">
                <p style="width: 100%; font-size: 18px; text-align: justify; margin: 30px">
                    ${s.moTa}
                </p>
                <img class="rounded mx-auto d-block" 
                     src="${s.hinhAnh}" alt="${s.tenSanh}" 
                     style="width: 70%"/>
            </div>
        </c:forEach>
    </div>
</div>

