<%-- 
    Document   : yearStats
    Created on : Sep 7, 2023, 11:50:58 AM
    Author     : Admin
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h1 class="text-center text-info">THỐNG KÊ DOANH THU THEO NĂM</h1>
<br><br>
<c:url value="/admin/yearStats" var="action" />
<form action="${action}" class=" searchStats d-flex" style="margin-left: 65%; width: 30%;">
    <input type="number" class="form-control" placeholder="Nhập năm..." name="year">
    <button type="submit" class=" btn btn-primary ml-2">Thống kê</button>
</form>
<div class="row" style="margin-left:6%">
    <div class="col-md-4 col-xs-12">
        <h2 class="section-title2 section-title-center">
            <b></b>
            <span class="section-title-main" style="color:rgb(210, 80, 0);">
                BẢNG THỐNG KÊ DOANH THU THEO NĂM
            </span>
            <b></b>
        </h2>
        <table class="table stats">
            <tr>
                <th class="id">Mã</th>
                <th>Ngành nghề</th>
                <th>Số lượng CV</th>
            </tr>
            <c:forEach items="${Categories}" var="y">
                <tr>
                    <td>${y.id}</td>
                    <td>${y.name}</td>
                    <td></td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <div class="col-md-7 col-xs-12">
        <h2 class="section-title2 text-center">
            <b></b>
            <span class="section-title-main" style="color:rgb(210, 80, 0);">
                BIỂU ĐỒ DOANH THU THEO NĂM
            </span>
            <b></b>
        </h2>
        <div class="canvasStats">
            <canvas id="myChart4"></canvas>
        </div>

    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="<c:url value="/js/stats.js" />"></script>
<script>
    window.onload = function () {
        let data = [];
        let labels = [];

    <c:forEach items="${yearStats}" var="y">
        data.push(${y.id});
        labels.push('${y.name}');
    </c:forEach>

        yearStats(labels, data);
    }
</script>