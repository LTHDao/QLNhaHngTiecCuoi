<%-- 
    Document   : dichVu
    Created on : Aug 20, 2022, 12:19:07 AM
    Author     : hdao2
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div style="background-image: url(https://res.cloudinary.com/btlde1/image/upload/v1661005850/QLNhaHangTiecCuoi/tieccuoi7_s4t5mc.jpg);
     width: 100%; height: 450px; background-size: cover;" class="w3-animate-opacity">
    <div class="w3-center text-white w3-animate-bottom" style="padding-top: 170px;font-size: xxx-large; width: 100%; height: 100%; background-image: radial-gradient(#00000070, transparent)">
        <b>DỊCH VỤ CƯỚI</b>
    </div>
</div>

<div style="margin-top: 50px">

    <ul class="nav justify-content-center" style="font-size: x-large">
        <li class="nav-item" style=" margin: 0 10px">
            <a class="nav-link menuMonAn text-dark w3-hover-amber w3-hover-text-white" href="<c:url value="dichvu" />">Dịch Vụ</a>
        </li>
        <c:forEach items="${loaidichvu}" var="l">
            <li class="nav-item" style=" margin: 0 10px">
                <c:url value="/dichvu" var="loaidichvuUrl">
                    <c:param name="loaidichvuID" value="${l.idloaidichvu}" />
                </c:url>
                <a class="nav-link text-dark  menuMonAn w3-hover-amber w3-hover-text-white" href="${loaidichvuUrl}">${l.tenLoaiDichVu}</a>
            </li>


        </c:forEach>
    </ul>

    <hr style="width: 80%; margin-left: 10%"/>

    <div class="container">
        <div class="row" style="margin-top: 50px">
            <c:forEach items="${dichvu}" var="m">
                <div class="col-md-3 col-sm-1 col-xs-1 w3-hover-shadow" style="padding: 20px">
                    <a href="#" data-bs-toggle="modal" data-bs-target="#myModal${m.idDichVu}">
                        <div class="card">
                            <img class="card-img-top" src="<c:url value="${m.hinhAnh}" />" alt="Card image">
                            <div class="card-img-overlay" style="height: 35%;width: 100%; background-image: linear-gradient(#00000090, transparent)">
                                <h5 class="card-title text-white">${m.tenDichVu}</h5>
                                <p class="card-text text-white">${m.loaiDichVu.tenLoaiDichVu}</p>
                            </div>
                        </div>
                    </a>

                    <!-- The Modal -->
                    <div class="modal fade" id="myModal${m.idDichVu}">
                        <div class="modal-dialog modal-dialog-centered modal-lg">
                            <div class="modal-content">

                                <!-- Modal Header -->
                                <div class="modal-header">
                                    <h3 class="modal-title">${m.tenDichVu}</h3>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                </div>

                                <!-- Modal body -->
                                <div class="container">
                                    <div class="modal-body">
                                        <h5>${m.loaiDichVu.tenLoaiDichVu}</h5>
                                        <img src="${m.hinhAnh}" style="width: 40%" />
                                        <p style="width: 50%; float: right; text-align: justify; font-size: 18px">${m.chiTiet}</p>
                                        <p class="w3-center" style="margin-top: 20px">Giá: <b>${m.giaDichVu} VND</b></p>
                                    </div>
                                </div>

                                <!-- Modal footer -->
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

    <ul class="pagination justify-content-center" style="margin:20px 0">
        <c:forEach begin="1" end="${Math.ceil(counter/pageSize)}" var="p">
            <c:url value="/dichvu" var="u">
                <c:param name="page" value="${p}" />
            </c:url>
            <li class="page-item">
                <a class="page-link" href="${u}<c:if test="${loaiDichVuId != null}">&loaidichvuID=${loaiDichVuId}</c:if>">
                    Trang ${p}</a>
            </li>
        </c:forEach>
    </ul>

</div>