/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function loadPhanHoi(endpoint) {
    fetch(endpoint).then(function (res) {
        return res.json();
    }).then(function (data) {
        let h = '';
        for (let d of data) {
            h += `
                <li class="list-group-item list-group-item-action">
                    <img style="width: 3%; border-radius: 30px; margin-right: 30px; float: left" src="${d.user.avatar}" />

                    <span style="display: block; font-size: 17px"><b>${d.user.hoTen}</b></span>
                    <span style="font-size: 15px">${d.noiDung}</span>
                    <em style="font-size: 13px; margin-left:10px">. ${moment(d.ngayPhanHoi).locale("vi").fromNow()}</em>
                </li>
            `
        }

        let c = document.getElementById("dsPhanHoi");
        c.innerHTML = h;
    });
}

function addPhanHoi(endpoint) {
    var comment = document.getElementById("comment").value

    fetch(endpoint, {
        method: "POST",
        body: JSON.stringify({
            "noiDung": comment
        }),
        headers: {
            "Content-Type": "application/json"
        }
    }).then(function (res) {
        return res.json();
    }).then(function (data) {
        let d = document.querySelector("#dsPhanHoi li:first-child");
        let h = `
                <li class="list-group-item list-group-item-action">
                    <img style="width: 3%; border-radius: 30px; margin-right: 30px; float: left" src="${data.user.avatar}" />
                    <span style="display: block"><b>${data.user.hoTen}</b></span>
                    <span">${data.noiDung}</span>
                    <em style="font-size: 13px; margin-left:10px">. ${moment(data.ngayPhanHoi).locale("vi").fromNow()}</em>
                </li>
            `
        d.insertAdjacentHTML("beforebegin", h);
        document.getElementById("comment").value = '';
        console.info(data);
    }).catch(function (err) {
        console.error(err);
        if (comment === "") {
            var h = `
                <div class="alert alert-danger">
                    Hãy viết gì đó!
                </div>
            `
        } else {
            var h = `
                <div class="alert alert-danger">
                    Bạn chưa đăng nhập! Hãy đăng nhập để gửi phản hồi!
                </div>
            `

        }
        let c = document.getElementById("alert-not-login");
        c.innerHTML = h;
    });
}
