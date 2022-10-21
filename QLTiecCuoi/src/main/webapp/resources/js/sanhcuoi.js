/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

var idSanhCuoi = document.getElementById("idSanhCuoi");
idSanhCuoi.style.display = "none";

function loadAdminSanhCuoi(endpoint) {
    fetch(endpoint).then(function (res) {
        return res.json();
    }).then(function (data) {
        console.info(data);
        let msg = "";
        for (let i = 0; i < data.length; i++) {
            data[i];
            msg += `
            <tr id="row${data[i].idSanhCuoi}">                
                <td>${data[i].tenSanh}</td>
                <td>${data[i].giaToiThieu}</td>
                <td>${data[i].moTa}</td>
                <td>${data[i].dienTich}</td>
                <td>${data[i].soLuongBan}</td>
                <td><img src="${data[i].hinhAnh}" width="120" /></td>
                <td>
                    <button style="width:60px; margin:2px" class="btn btn-primary" onclick="loadUpdateSanhCuoi('${endpoint + "/" + data[i].idSanhCuoi}', ${data[i].idSanhCuoi})" data-bs-toggle="modal" data-bs-target="#myModalUpdateNhanVien">Sửa</button>
                    <button style="width:60px; margin:2px" class="btn btn-danger" onclick="deleteSanhcuoi('${endpoint + "/" + data[i].idSanhCuoi}', ${data[i].idSanhCuoi}, this)" >Xóa</button>
                </td>
            </tr>
            `
        }

        let d = document.getElementById("adminSanhCuoi");
        d.innerHTML = msg;
    })
}

function getSanhcuoiById(endpoint) {
    fetch(endpoint).then(function (res) {
        return res.json();
    }).then(function (data) {
        idSanhCuoi.style.display = "block";
        for (let i = 0; i < data.length; i++) {
            document.getElementById("tenSanh").value = `${data[i].tenSanh}`;
            document.getElementById("giaToiThieu").value = `${data[i].giaToiThieu}`;
            document.getElementById("moTa").value = `${data[i].moTa}`;
            document.getElementById("dienTich").value = `${data[i].dienTich}`;
            document.getElementById("soLuongBan").value = `${data[i].soLuongBan}`;
            document.getElementById("idSanhCuoi").value = `${data[i].idSanhCuoi}`;
        }
        console.log(1);
    })
}

function deleteSanhcuoi(endpoint, id, btn) {
    let r = document.getElementById(`row${id}`);
    btn.style.display = "none";
    fetch(endpoint, {
        method: 'delete'
    }).then(function (res) {
        r.style.display = "none";
    }).catch(function (err) {
        console.error(err);
        btn.style.display = "block";
    });
}

function loadUpdateSanhCuoi(endpoint, id) {
    fetch(endpoint, {
        method: 'get'
    }).then(function (res) {
        return res.json();
    }).then(function (data) {

        document.getElementById("tenSanh1").value = `${data[0].tenSanh}`;
        document.getElementById("giaToiThieu1").value = `${data[0].giaToiThieu}`;
        document.getElementById("moTa1").value = `${data[0].moTa}`;
        document.getElementById("dienTich1").value = `${data[0].dienTich}`;
        document.getElementById("soLuongBan1").value = `${data[0].soLuongBan}`;
        let updateNV = document.getElementById('updateNV');

        updateNV.setAttribute('onclick', `updateNhanVien(${id})`);
//        
    });
}

function updateNhanVien(id) {
    let tenSanh = document.getElementById('tenSanh1');
    let giaToiThieu = document.getElementById('giaToiThieu1');
    let moTa = document.getElementById('moTa1');
    let dienTich = document.getElementById('dienTich1');
    let soLuongBan = document.getElementById('soLuongBan1');


    fetch("/QLTiecCuoi/api/qlsanhcuoi/updateSanhcuoi", {
        method: 'put',
        body: JSON.stringify({
            "idSanhCuoi": id,
            "tenSanh": tenSanh.value,
            "giaToiThieu": giaToiThieu.value,
            "moTa": moTa.value,
            "dienTich": dienTich.value,
            "soLuongBan": soLuongBan.value
        }),
        headers: {
            "Content-Type": "application/json"
        }
    }).then(function (res) {
        return res.json();
    }).then(function (data) {
        location.reload();
        if (data === true) {
            alert('Đã sửa thành công');
        } else
            alert('Thất bại, xin vui lòng thử lại');
    }).catch(function (err) {
        console.error(err);
    });
}