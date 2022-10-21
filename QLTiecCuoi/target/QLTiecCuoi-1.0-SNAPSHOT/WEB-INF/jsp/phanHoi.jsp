<%-- 
    Document   : phanHoi
    Created on : Aug 29, 2022, 4:58:30 PM
    Author     : hdao2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
    <c:url value="/api/phanhoi" var="endpoint" />
    <h3 class="text-center" style="padding: 10px">Khách hàng phản hồi</h3>
    <div id="alert-not-login"></div>
    <div class="form-group">
        <textarea maxlength="300" minlength="1" class="form-control" id="comment" placeholder="Noi dung comment"></textarea>
    </div>
    <input type="button" onclick="addPhanHoi('${endpoint}')" value="Bình luận" class="btn btn-danger" />

    <ul class="list-group list-group-flush" id="dsPhanHoi">
    </ul>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment-with-locales.min.js"></script>
<script src="<c:url value="/js/phanHoi.js" />"></script>
<script>
        window.onload = function () {
            loadPhanHoi('${endpoint}');
        }
</script>