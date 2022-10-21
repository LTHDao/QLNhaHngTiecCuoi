/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function deleteUser(endpoint, id) {
    let d = document.getElementById("load" + id);
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

function loadUpdateNhanVien(endpoint, id) {
    fetch(endpoint, {
        method: 'get'
    }).then(function (res) {
        return res.json();
    }).then(function (data) {
        let hoTen = document.getElementById('hoTen1');
        let ngaySinh = document.getElementById('ngaySinh1');
        let gioiTinh = document.getElementById('gioiTinh');
        let diaChi = document.getElementById('diaChi1');
        let sdt = document.getElementById('sdt1');
        let email = document.getElementById('email1');
        let userRole = document.getElementById('userRole');
        let updateNV = document.getElementById('updateNV');

        hoTen.value = data[0]["hoTen"];
        ngaySinh.value = moment(data[0]["ngaySinh"]).format("YYYY-MM-DD");
        gioiTinh.value = data[0]["gioiTinh"];
        diaChi.value = data[0]["diaChi"];
        sdt.value = data[0]["sdt"];
        email.value = data[0]["email"];
        userRole.value = data[0]["userRole"];
        updateNV.setAttribute('onclick', `updateNhanVien(${id})`);
//        
    });
}

function updateNhanVien(id) {
    let hoTen = document.getElementById('hoTen1');
    let ngaySinh = document.getElementById('ngaySinh1');
    let gioiTinh = document.getElementById('gioiTinh');
    let diaChi = document.getElementById('diaChi1');
    let sdt = document.getElementById('sdt1');
    let email = document.getElementById('email1');
    let userRole = document.getElementById('userRole');
    

    fetch("/QLTiecCuoi/api/nhanvien/updateNhanVien", {
        method: 'put',
        body: JSON.stringify({
            "id": id,
            "hoTen": hoTen.value,
            "ngaySinh": ngaySinh.value,
            "gioiTinh": gioiTinh.value,
            "diaChi": diaChi.value,
            "sdt": sdt.value,
            "email": email.value,
            "userRole": userRole.value
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

function loadAdminNhanvien(endpoint) {
    fetch(endpoint).then(function (res) {
        return res.json();
    }).then(function (data) {
        console.info(data);
        let msg = "";
        for (let i = 0; i < data.length; i++) {
            data[i];
            msg += `
            <tr >                
                <td>${data[i].hoTen}</td>
                <td>${moment(data[i].ngaySinh).format("DD-MM-YYYY")}</td>
                <td>${data[i].gioiTinh}</td>
                <td>${data[i].diaChi}</td>
                <td>${data[i].sdt}</td>
                <td>${data[i].email}</td>
                <td>${data[i].userRole}</td>

                <td>
                    <div class="spinner-border text-info" style="display:none" id="load${data[i].id}"></div>
                    <button class="btn btn-primary" onclick="loadUpdateNhanVien('${endpoint + "/" + data[i].id}', ${data[i].id})" data-bs-toggle="modal" data-bs-target="#myModalUpdateNhanVien">
                               Edit
                            </button>
                    <button class="btn btn-danger" onclick="deleteUser('${endpoint + "/" + data[i].id}', ${data[i].id})">Xóa</button>
                </td>
                
            </tr>
            `
        }

        let d = document.getElementById("adminNhanvien");
        d.innerHTML = msg;
    })



}
