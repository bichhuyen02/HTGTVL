<%-- 
    Document   : addJob
    Created on : Jul 28, 2023, 2:49:03 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!--enctype="multipart/form-data"-->

<div class="text-danger mt-4 mb-4 text-center"><h2>QUẢN LÝ CÔNG VIỆC</h2></div>
<form:form cssClass="container " modelAttribute="addjobs">
    <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" path="title" id="title" placeholder="Tên công việc" name="title" />
        <label for="name">Tên công việc </label>
    </div>

    <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" path="linkApply" id="linkApply" placeholder="Link Trang" name="linkApply" />
        <label for="name">Link Trang</label>
    </div>

    <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" path="description" id="description" placeholder="Mô Tả" name="description" />
        <label for="name">Mô Tả</label>
    </div>

    <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" path="requirement" id="requirement" placeholder="Yêu Cầu" name="requirement" />
        <label for="name">Yêu Cầu</label>
    </div>

    <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" path="address" id="address" placeholder="Địa Chỉ" name="address" />
        <label for="name">Địa Chỉ</label>
    </div>

    <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" path="salary" id="salary" placeholder="Lương" name="salary" />
        <label for="name">Lương</label>
    </div>

    <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" path="outOffTime" id="outOffTime" placeholder="Ngày Hết Hạn" name="outOffTime" />
        <label for="name">Ngày Hết Hạn</label>
    </div>

    <div>
        <span> Khu Vực: </span>
        <select>
            <c:forEach items="${locations}" var="l">
                <option>${l.name}</option>
            </c:forEach>
        </select>
    </div>

    <div>
        <span> Doanh Nghiệp: </span>
        <select>
            <c:forEach items="${companies}" var="c">
                <option>${c.name}</option>
            </c:forEach>
        </select>
    </div>

        
    <div class="nut">
        <button type="button" class="btn btn-primary">Thêm</button>
        <button type="button" class="btn btn-danger">Hủy</button>
    </div>

</form:form>

