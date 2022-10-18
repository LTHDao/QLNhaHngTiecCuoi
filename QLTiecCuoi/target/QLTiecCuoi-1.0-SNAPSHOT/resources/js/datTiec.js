/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

var idDon = 0;
var idHoaDon = 0;
var tienMonAn = 0;
var tienDichVu = 0;
var soBan = 0;
var giaTang = 0;
var giaSanh = 0;
let spinnerDatTiec = document.getElementById("spinnerDatTiec");
let btnDatTiec = document.getElementById("btnDatTiec");
function addDonDatTiec() {
    var radio = document.getElementsByName('optradio');
    var idSanh = "";
    for (var i = 0; i < radio.length; i++) {
        if (radio[i].checked === true) {
            idSanh = radio[i].value;
        }
    }

    fetch('/QLTiecCuoi/api/dondattiec', {
        method: "POST",
        body: JSON.stringify({
            "tenKH": document.getElementById("tenKH").value,
            "sdtKH": document.getElementById("sdtKH").value,
            "emailKH": document.getElementById("emailKH").value,
            "idSanh": idSanh,
            "ngayToChuc": document.getElementById("ngayToChuc").value,
            "ngayDatHen": document.getElementById("ngayDatHen").value,
            "chitTiet": document.getElementById("chitTiet").value,
            "soBan": document.getElementById("soBan").value
        }),
        headers: {
            "Content-Type": "application/json"
        }
    }).then(function (res) {
        return res.json();
    }).then(function (code) {
        idDon = code.idDonDatTiec;
        soBan = code.soBan;
        giaTang = code.idCaToChuc.giaTang;
        giaSanh = code.idSanh.giaToiThieu;

        addPhieuDatDichVuMonAn();
        console.info(code);
    }).catch(function (err) {
        console.error(err);
    });
}

function addPhieuDatDichVuMonAn() {
    
    var dichVuChecked = document.getElementsByName('optionDV');
    for (var i = 0; i < dichVuChecked.length; i++) {
        if (dichVuChecked[i].checked === true) {
            fetch('/QLTiecCuoi/api/phieudatdichvu', {
                method: "POST",
                body: JSON.stringify({
                    "idDonDatTiec": idDon,
                    "idDichVu": dichVuChecked[i].value
                }),
                headers: {
                    "Content-Type": "application/json"
                }
            }).then(function (res) {
                return res.json();
            }).then(function (code) {
                tienDichVu += code.idDichVu.giaDichVu;
                console.info(code);
            }).catch(function (err) {
                console.error(err);
            });
        }
    }

    var monAnChecked = document.getElementsByName('optionMA');

    for (var i = 0; i < monAnChecked.length; i++) {
        if (monAnChecked[i].checked === true) {
            fetch('/QLTiecCuoi/api/phieudatmon', {
                method: "POST",
                body: JSON.stringify({
                    "idDonDatTiec": idDon,
                    "idMonAn": monAnChecked[i].value
                }),
                headers: {
                    "Content-Type": "application/json"
                }
            }).then(function (res) {
                return res.json();
            }).then(function (code) {
                tienMonAn += code.idMonAn.gia * soBan;
                console.info(code);
            }).catch(function (err) {
                console.error(err);
            });
        }
    }
    btnDatTiec.style.display = "none"
    spinnerDatTiec.style.display = "block"
    setTimeout(function () {
        addHoaDon();
    }, 5000);


}

function addHoaDon() {
    fetch('/QLTiecCuoi/api/hoadon', {
        method: "POST",
        body: JSON.stringify({
            "idDonDatTiec": idDon,
            "tongGia": tienDichVu + tienMonAn + giaSanh + giaTang
        }),
        headers: {
            "Content-Type": "application/json"
        }
    }).then(function (res) {
        return res.json();
    }).then(function (code) {
        spinnerDatTiec.style.display = "none"
        idHoaDon = code.idhoadon;
        console.info(code);
        window.open("/QLTiecCuoi/thanhToan/" + idHoaDon, "_self")
    }).catch(function (err) {
        console.error(err);
    });
}

//function loadThanhToan() {
//    fetch('/QLTiecCuoi/api/hoadon/' + 60).then(function(res) {
//        return res.json();
//    }).then(function (data) {
//        let h;
//        for (let d of data) {
////            h += `
////                <li class="list-group-item list-group-item-action">
////                    <img style="width: 3%; border-radius: 30px; margin-right: 30px; float: left" src="${d.user.avatar}" />
////
////                    <span style="display: block; font-size: 17px"><b>${d.user.username}</b></span>
////                    <span style="font-size: 15px">${d.noiDung}</span>
////                    <em style="font-size: 13px; margin-left:10px">. ${moment(d.ngayPhanHoi).locale("vi").fromNow()}</em>
////                </li>
////            `
//        h+= `<span>
//                    ${d.tongGia}
//                </span>`
//        }
//        
//        let c = document.getElementById("thanhToanTrucTiep");
//        c.innerHTML = h;
//    });
//}