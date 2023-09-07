<%-- 
    Document   : quarterStats
    Created on : Sep 7, 2023, 11:51:11 AM
    Author     : Admin
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<h1 class="text-center text-info">THỐNG KÊ DOANH THU THEO QUÝ</h1>
<br><br>
<c:url value="/admin/quarterStats" var="action" />
<form action="${action}" class="d-flex searchStats">
    <select class="form-control" name="quarter">
        <option selected disabled>Chọn quý</option>
        <c:forEach begin="1" end="4" var="i">
            <option value="${i}">${i}</option>
        </c:forEach>
    </select>
    <input type="number" class="form-control" placeholder="Nhập năm..." name="year">
    <button type="submit" class="btn btn-primary">Lọc dữ liệu</button>
</form>
<div class="row">
    <div class="col-md-5 col-xs-12">
        <h2 class="section-title2 section-title-center">
            <b></b>
            <span class="section-title-main" style="color:rgb(210, 80, 0);">
                BẢNG DOANH THU THEO QUÝ
            </span>
            <b></b>
        </h2>
        <table class="table stats">
            <tr>
                <th class="id">Mã</th>
                <th>Ngành nghề</th>
                <th>Số lượng CV</th>
            </tr>
            <c:forEach items="${categories}" var="q">
                <tr>
                    <td>${q.id}</td>
                    <td>${q.name}</td>
                    <td>
                       
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <div class="col-md-7 col-xs-12">
        <h2 class="section-title2 section-title-center">
            <b></b>
            <span class="section-title-main" style="color:rgb(210, 80, 0);">
                BIỂU ĐỒ DOANH THU THEO QUÝ
            </span>
            <b></b>
        </h2>
        <div class="canvasStats">
            <canvas id="myChart3"></canvas>
        </div>

    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="<c:url value="/js/stats.js" />"></script>
<script>
    window.onload = function () {
        let data = [];
        let labels = [];

    <c:forEach items="${quarterStats}" var="q">
        data.push(${q.id});
        labels.push('${q.name}');
    </c:forEach>

        quarterStats(labels, data);
    }
</script>