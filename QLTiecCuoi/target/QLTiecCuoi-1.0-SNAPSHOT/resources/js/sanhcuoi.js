/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function deleteSanhCuoi(endpoint, idSanhCuoi) {
    let d = document.getElementById("load" +idSanhCuoi);
    d.style.display = "block";
     fetch(endpoint, {
        method: "delete"
    }).then(function(res) {
        if (res.status === 204)
            location.reload();
    }).catch(function(err) {
        console.error(err);
    });
}

function loadAdminSanhCuoi(endpoint) {
    fetch(endpoint).then(function (res) {
        return res.json();
    }).then(function (data) {
        console.info(data);
        let msg = "";
        for (let i = 0; i < data.length; i++) {
            data[i];
            msg += `
            <tr>                
                <td>${data[i].tenSanh}</td>
                <td>${data[i].giaToiThieu}</td>
                <td>${data[i].moTa}</td>
                <td>${data[i].dienTich}</td>
                <td>${data[i].soLuongBan}</td>
                <td><img src="${data[i].hinhAnh}" width="120" /></td>
                <td>
                    <button class="btn btn-danger" onclick="deleteSanhCuoi('${endpoint + "/" + data[i].idSanhCuoi}', ${data[i].idSanhCuoi})">Xoa</button>
                </td>
            </tr>
            `
        }
        
        let d = document.getElementById("adminSanhCuoi");
        d.innerHTML = msg;
    })
}