/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

//Thong ke mat do
function matDoTiecCuoiThang(id, tLabels = [], tInfo = []) {
    const data = {
        labels: tLabels,
        datasets: [{
                label: 'Thống kê mật độ tiệc cưới theo tháng',
                data: tInfo,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
    };

    const config = {
        type: 'doughnut',
        data: data,
    };

    let ctx = document.getElementById(id).getContext("2d")

    new Chart(ctx, config)
}

function matDoTiecCuoiQuy(id, qLabels = [], qInfo = []) {
    const data = {
        labels: qLabels,
        datasets: [{
                label: 'Thống kê mật độ tiệc cưới theo quý',
                data: qInfo,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
    };

    const config = {
        type: 'doughnut',
        data: data,
    };

    let ctx = document.getElementById(id).getContext("2d")

    new Chart(ctx, config)
}

function matDoTiecCuoiNam(id, nLabels = [], nInfo = []) {
    const data = {
        labels: nLabels,
        datasets: [{
                label: 'Thống kê mật độ tiệc cưới theo năm',
                data: nInfo,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
    };

    const config = {
        type: 'doughnut',
        data: data,
    };

    let ctx = document.getElementById(id).getContext("2d")

    new Chart(ctx, config)
}

//Thong ke doanh thu
function doanhThuTiecCuoiThang(id, tLabels = [], tInfo = []) {
    const data = {
        labels: tLabels,
        datasets: [{
                label: 'Thống kê doanh thu theo tháng',
                data: tInfo,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
    };

    const config = {
        type: 'line',
        data: data,
    };

    let ctx = document.getElementById(id).getContext("2d")

    new Chart(ctx, config)
}

function doanhThuTiecCuoiQuy(id, qLabels = [], qInfo = []) {
    const data = {
        labels: qLabels,
        datasets: [{
                label: 'Thống kê doanh thu theo quý',
                data: qInfo,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
    };

    const config = {
        type: 'line',
        data: data,
    };

    let ctx = document.getElementById(id).getContext("2d")

    new Chart(ctx, config)
}

function doanhThuTiecCuoiNam(id, nLabels = [], nInfo = []) {
    const data = {
        labels: nLabels,
        datasets: [{
                label: 'Thống kê doanh thu theo năm',
                data: nInfo,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
    };

    const config = {
        type: 'line',
        data: data,
    };

    let ctx = document.getElementById(id).getContext("2d")

    new Chart(ctx, config)
}