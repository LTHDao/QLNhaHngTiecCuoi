<%-- 
    Document   : index
    Created on : Aug 17, 2022, 7:53:18 PM
    Author     : hdao2
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 

<sec:authorize access="hasRole('ROLE_ADMIN')">
    <div style="padding-top: 15px; margin-left: 30px; margin-bottom: 15px">
        <a class="btn btn-warning text-white" href="<c:url value="/admin/qldichvu"/>">Quản Lý Dịch Vụ</a> 
        <a class="btn btn-warning text-white" href="<c:url value="/admin/qlsanhcuoi"/>">Quản Lý Sảnh Cưới</a> 
        <a class="btn btn-warning text-white" href="<c:url value="/admin/nhanvien"/>">Quản Lý Nhân Viên</a>  
        <a class="btn btn-warning text-white" href="<c:url value="/admin/thongKeMatDo"/>">Thống kê mật độ</a> 
        <a class="btn btn-warning text-white" href="<c:url value="/admin/thongKeDoanhThu"/>">Thống kê doanh thu</a> 
    </div>
</sec:authorize>


<div class="w3-animate-opacity" style="background-image: url(https://res.cloudinary.com/btlde1/image/upload/v1660833708/QLNhaHangTiecCuoi/tieccuoi5_tjqecp.jpg);
     width: 100%; height: 600px; position: relative">
    <div style="padding: 150px 0 0 80px; width: 100%; height: 100%; background-image: radial-gradient(#000000b8, transparent)">
        <span class="w3-animate-bottom"  style="font-size: 70px; color: white; ">
            Nhà hàng tiệc cưới <br><b>MARRY ME</b></br>
        </span>
    </div>
</div>

<div class="w3-animate-bottom" style="background-color: #d0d0d094; width: 100%; height: 250px; margin: 80px 0px">
    <div style="width: 30%; float: left; margin: 50px 10% 50px 12%; text-align: justify">Trung tâm Hội Nghị - Tiệc Cưới Grand Palace là địa điểm tổ chức tiệc cưới, hội nghị và sự kiện trọn gói chuyên nghiệp uy tín bật nhất TP HCM tọa lạc tại quận Tân Bình. 
        Grand Palace sở hữu 6 sảnh tiệc lớn phối hợp hoàn hảo cùng kiến trúc Châu Âu sang trọng...
    </div>
    <img style="width: 36%; margin-right: 12%; height: 290px; position: relative; bottom: 20px" src="https://res.cloudinary.com/btlde1/image/upload/v1660830282/QLNhaHangTiecCuoi/tieccuoi3_qrl7t1.jpg" />
</div>

<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal"
        style="bottom: 100px; position: fixed; right: 20px; width: 50px; height: 50px; border-radius: 30px"
        onclick="openBoxChat()">
</button>

<!-- The Modal -->
<div class="modal fade" id="myModal">
    <div class="modal-dialog modal-xl" style="bottom: 0; position: fixed; right: 20px; width: 35%;">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header" style="background-color: burlywood;">
                <h4 class="modal-title">Nhà hàng tiệc cưới Marry Me</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <!-- Modal body -->
            <div class="modal-body" style="height: 400px; overflow: auto;">
                <c:if test="${pageContext.request.userPrincipal.name == null}">
                    <div class="alert alert-danger">
                        Hãy đăng nhập để gửi tin nhắn!!!
                    </div>
                </c:if>
                <div class="box-chat">
                    <div id="contentall"></div>
                </div>


            </div>

            <!-- Modal footer -->
            <div class="modal-footer row" style="padding: 0 0.75em 0.75em 0.75em;">
                <label for="typing-message"></label>
                <input id="comment" style="border: none; border-bottom: black solid 1px;" class="col-md-9" id="typing-message" type="text" placeholder="Aa" autofocus>
                <button id="send-chat" style="display: inline; background: burlywood; margin-right: 10px"  type="button" class="btn w3-hover-red col-md-2">Gửi</button>
            </div>

        </div>
    </div>
</div>

<script type="module">
    import { initializeApp } from "https://www.gstatic.com/firebasejs/9.9.4/firebase-app.js";
    import { getAnalytics } from "https://www.gstatic.com/firebasejs/9.9.4/firebase-analytics.js";
    import { getDatabase, set, ref, push, child, onValue, onChildAdded } from "https://www.gstatic.com/firebasejs/9.9.4/firebase-database.js";
    // TODO: Add SDKs for Firebase products that you want to use
    // https://firebase.google.com/docs/web/setup#available-libraries
    // Your web app's Firebase configuration
    // For Firebase JS SDK v7.20.0 and later, measurementId is optional
    const firebaseConfig = {
        apiKey: "AIzaSyAh_pEgfv41Ki4j6peddPapxpxf0CUg2Ek",
        authDomain: "qlnhahangtieccuoi-950f5.firebaseapp.com",
        projectId: "qlnhahangtieccuoi-950f5",
        storageBucket: "qlnhahangtieccuoi-950f5.appspot.com",
        messagingSenderId: "469142912877",
        appId: "1:469142912877:web:c582229e9d68286a4ba464"
    };
    // Initialize Firebase
    const app = initializeApp(firebaseConfig);
    const analytics = getAnalytics(app);
    var database = getDatabase(app);

    var btn = document.getElementById("send-chat");
    var comment = document.getElementById("comment");
//    if(${current} != null) {
//        btn.addEventListener('click', (e) => {
//        set(ref(database, "dao/"), {
//            name: 'Ẩn danh',
//            comment: comment,
//            userRole: "ROLE_USER"
//        });
//    })
//    } else {
    btn.addEventListener('click', (e) => {
        const id = push(child(ref(database), 'messages')).key;
        if ('${current.userRole}' === 'ROLE_EMPLOYEE' || '${current.userRole}' === 'ROLE_ADMIN') {
            set(ref(database, "dao/" + id), {
                id: ${current.id},
                name: 'NHTC Marry Me',
                comment: comment.value,
                userRole: '${current.userRole}'
            });
        } else {
            set(ref(database, "dao/" + id), {
                id: ${current.id},
                name: '${current.hoTen}',
                comment: comment.value,
                userRole: '${current.userRole}'
            });
        }
    })



    const newMessage = ref(database, 'dao/');
    var contentall = document.getElementById("contentall");
    onChildAdded(newMessage, (data) => {
//        let pleft = '<p class="tenleft" style="margin: 1em 0 0.2em 0.5em; font-size: 12px">' + data.val().name + '</p>';
//
//        pleft += '<div style="background-color: palegoldenrod; width: auto; max-width:70%; height: auto; border-radius: 30px"><p class="left" \n\
//                style="padding: 7px 20px; width: auto; word-wrap: break-word;">'
//                + data.val().comment + '</p></div>';
//        contentall.insertAdjacentHTML("beforebegin", pleft);

        if (data.val().userRole === 'ROLE_USER') {


            let pright = '<div style="text-align: -webkit-right;"><p class="tenleft" style="margin: 1em 0.5em 0.2em 0; font-size: 12px">' + data.val().name + '</p>';

            pright += '<div style="background-color: #eeeeee; width: auto; max-width:70%; height: auto; border-radius: 30px"><p class="left" \n\
                style="padding: 7px 20px; width: auto; word-wrap: break-word;">'
                    + data.val().comment + '</p></div></div>';
            contentall.insertAdjacentHTML("beforebegin", pright);
        } else {
            let pleft = '<p class="tenleft" style="margin: 1em 0 0.2em 0.5em; font-size: 12px">' + data.val().name + '</p>';

            pleft += '<div style="background-color: palegoldenrod; width: auto; max-width:70%; height: auto; border-radius: 30px"><p class="left" \n\
                style="padding: 7px 20px; width: auto; word-wrap: break-word;">'
                    + data.val().comment + '</p></div>';
            contentall.insertAdjacentHTML("beforebegin", pleft);
        }
    });

    function openBoxChat() {

        var boxChat = document.querySelector("box-chat");
        boxChat.scrollTop = boxChat.scrollHeight;
    }

</script>


