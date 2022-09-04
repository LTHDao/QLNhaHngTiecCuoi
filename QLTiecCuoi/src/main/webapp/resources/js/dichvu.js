/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function deleteDichVu(endpoint, idDichVu) {
    let d = document.getElementById("load" +idDichVu);
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

function updateDichVu(endpoint, idDichVu){

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
                    <button class="btn btn-danger" onclick="deleteDichVu('${endpoint + "/" + data[i].idDichVu}', ${data[i].idDichVu})">Xoa</button>
                    <button class="btn btn-danger" onclick="upupdateDichVu('${endpoint + "/" + data[i].idDichVu}', ${data[i].idDichVu})">Sua</button>
                </td>
            </tr>
            `
        }
        
        let d = document.getElementById("adminDichvu");
        d.innerHTML = msg;
    })
    
    
}
