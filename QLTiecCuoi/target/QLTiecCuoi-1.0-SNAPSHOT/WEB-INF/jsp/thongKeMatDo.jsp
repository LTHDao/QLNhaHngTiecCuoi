<%-- 
    Document   : thongkeMatDo
    Created on : Aug 28, 2022, 6:44:55 PM
    Author     : hdao2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container mt-3">
    <form action="">
        <h5 style="padding-top: 20px">Chọn khoảng thời gian thống kê</h5>
        <div class="row">
            <div class="form-group col">
                <label class="form-label">Từ ngày</label>
                <input type="date" name="fromDate" class="form-control" />
            </div>
            <div class="form-group col">
                <label class="form-label">Đến ngày</label>
                <input type="date" name="toDate" class="form-control" />
            </div>
        </div>
        <div class="w3-center">
            <input type="submit" value="Thống kê" class="btn btn-primary" style="margin: 20px" />
        </div>
    </form>

    <h3 class="text-center" style="padding: 20px">THỐNG KÊ BÁO CÁO MẬT ĐỘ TIỆC CƯỚI THEO THÁNG</h3>     
    <div style="margin-top: 30px">
        <table class="table table-bordered w3-centered" style="width: 30%; display: inline-table">
            <thead>
                <tr>
                    <th>Tháng</th>
                    <th>Số lượng tiệc</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${matDoThang}" var="s">
                    <tr>
                        <td>${s[0]}/${s[1]}</td>
                        <td>${s[2]}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <div style="width: 40%; display: inline-block; margin-left: 20%">
            <canvas id="matDoTiecCuoiThangChart"></canvas>
        </div>
    </div>
    

    <hr style="margin: 50px; padding: 1px" />

    <h3 class="text-center" style="padding: 20px">THỐNG KÊ BÁO CÁO MẬT ĐỘ TIỆC CƯỚI THEO QUÝ</h3>  
    <div style="margin-top: 30px">
        <table class="table table-bordered w3-centered" style="width: 30%; display: inline-table">
            <thead>
                <tr>
                    <th>Tháng</th>
                    <th>Số lượng tiệc</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${matDoQuy}" var="s">
                    <tr>
                        <td>Quý ${s[0]} năm ${s[1]}</td>
                        <td>${s[2]}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <div style="width: 40%; display: inline-block; margin-left: 20%">
            <canvas id="matDoTiecCuoiQuyChart"></canvas>
        </div>
    </div>
    
    <hr style="margin: 50px; padding: 1px" />

    <h3 class="text-center" style="padding: 20px">THỐNG KÊ BÁO CÁO MẬT ĐỘ TIỆC CƯỚI THEO NĂM</h3>  
    <div style="margin-top: 30px">
        <table class="table table-bordered w3-centered" style="width: 30%; display: inline-table">
            <thead>
                <tr>
                    <th>Năm</th>
                    <th>Số lượng tiệc</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${matDoNam}" var="s">
                    <tr>
                        <td>Năm ${s[0]}</td>
                        <td>${s[1]}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <div style="width: 40%; display: inline-block; margin-left: 20%">
            <canvas id="matDoTiecCuoiNamChart"></canvas>
        </div>
    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="<c:url value="/js/stats.js" />"></script>
<script>
    window.onload = function () {
        let tLabels = [], tInfo = [], qLabels = [], qInfo = [], nLabels = [], nInfo = [];

    <c:forEach items="${matDoThang}" var="s">
        tLabels.push('Tháng ${s[0]}/${s[1]}')
        tInfo.push(${s[2]})
    </c:forEach>

    <c:forEach items="${matDoQuy}" var="s">
        qLabels.push('Quý ${s[0]} năm ${s[1]}')
        qInfo.push(${s[2]})
    </c:forEach>
        
    <c:forEach items="${matDoNam}" var="s">
        nLabels.push('Năm ${s[0]}')
        nInfo.push(${s[1]})
    </c:forEach>

        matDoTiecCuoiThang("matDoTiecCuoiThangChart", tLabels, tInfo)
        matDoTiecCuoiQuy("matDoTiecCuoiQuyChart", qLabels, qInfo)
        matDoTiecCuoiNam("matDoTiecCuoiNamChart", nLabels, nInfo)
    }
</script>