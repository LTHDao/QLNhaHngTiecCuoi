<%-- 
    Document   : thanhToan
    Created on : Sep 4, 2022, 1:06:58 AM
    Author     : hdao2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h3 class="text-center" style="padding: 10px">Thanh toán</h3>
<select class="form-select">
  <option>Thanh toán trực tiếp</option>
  <option>Thanh toán momo</option>
</select>

<div id="thanhToanTrucTiep">
    
</div>

<script src="<c:url value="/js/datTiec.js" />"></script>
<script>
        window.onload = function () {
            loadThanhToan();
        }
</script>