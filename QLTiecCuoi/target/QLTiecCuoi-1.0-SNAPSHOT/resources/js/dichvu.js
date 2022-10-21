/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function deleteDichVu(endpoint, idDichVu) {
    let d = document.getElementById("load" + idDichVu);
    d.style.display = "block";
    fetch(endpoint, {
        method: "delete"
    }).then(function (res) {
        if (res.status === 204)
            location.reload();
    }).catch(function (err) {
        console.error(err);
    });
}

function loadUpdateDichVu(endpoint, idDichVu) {
    fetch(endpoint, {
        method: 'get'
    }).then(function (res) {
        return res.json();
    }).then(function (data) {
        let tenDichVu = document.getElementById('tenDichVu1');
        let chiTiet = document.getElementById('chiTiet1');
        let giaDichVu = document.getElementById('giaDichVu1');
//        let file = document.getElementById('file1');
//        let hinhAnh = document.getElementById('hinhAnh');
//        let loaiDichVu = document.getElementById('loaiDichVu1');
        let updateDV = document.getElementById('updateDV');

        tenDichVu.value = data[0]["tenDichVu"];
        chiTiet.value = data[0]["chiTiet"];
        giaDichVu.value = data[0]["giaDichVu"];
//        file.value = data[0]["file"];
//        hinhAnh.value = data[0]["avatar"];
//        loaiDichVu.value = data[0]["loaiDichVu"];
        updateDV.setAttribute('onclick', `updateDichVu(${idDichVu})`);
//        
    });
}

function updateDichVu(idDichVu) {
    let tenDichVu = document.getElementById('tenDichVu1');
    let chiTiet = document.getElementById('chiTiet1');
    let giaDichVu = document.getElementById('giaDichVu1');
//    let file = document.getElementById('file1');
//    let hinhAnh = document.getElementById('hinhAnh');
//    let loaiDichVu = document.getElementById('loaiDichVu1');
    

    fetch("/QLTiecCuoi/api/qldichvu/updateDichVu", {
        method: 'put',
        body: JSON.stringify({
            "idDichVu": idDichVu,
            "tenDichVu": tenDichVu.value,
            "chiTiet": chiTiet.value,
            "giaDichVu": giaDichVu.value
//            "hinhAnh": hinhAnh.value
//            "file": file.value,
//            "loaiDichVu": loaiDichVu.value
        }),
        headers: {
            "Content-Type": "application/json"
        }
    }).then(function (res) {
        return res.json();
    }).then(function (data) {
        location.reload();
        if (data === true) {
            alert('Thành công');
        } else
            alert('Thất bại');
    }).catch(function (err) {
        console.error(err);
    });
}

function loadAdminDichvu(endpoint) {
    fetch(endpoint).then(function (res) {
        return res.json();
    }).then(function (data) {
        console.info(data);
        let msg = "";
        for (let i = 0; i < data.length; i++) {
            data[i];
            msg += `
            <tr>                
                <td>${data[i].tenDichVu}</td>
                <td>${data[i].chiTiet}</td>
                <td>${data[i].giaDichVu}</td>
                <td><img src="${data[i].hinhAnh}" width="120" /></td>
                <td>
                    <div class="spinner-border text-info" style="display:none" id="load${data[i].idDichVu}"></div>        
                    <button class="btn btn-danger" onclick="deleteDichVu('${endpoint + "/" + data[i].idDichVu}', ${data[i].idDichVu})">Xóa</button>
                </td>
                <td>
                    <button class="btn btn-primary" onclick="loadUpdateDichVu('${endpoint + "/" + data[i].idDichVu}', ${data[i].idDichVu})" data-bs-toggle="modal" data-bs-target="#myModalUpdateDichVu">
                               Sửa
                    </button>
                </td>
            </tr>
            `
        }

        let d = document.getElementById("adminDichvu");
        d.innerHTML = msg;
    })


}