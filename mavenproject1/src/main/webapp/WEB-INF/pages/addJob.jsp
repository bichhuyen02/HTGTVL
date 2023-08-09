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
        <form:select class="form-control" path="jobNature" id="jobNature" name="jobNature">
            <option>Full Time</option>
            <option>Pass Time</option>
        </form:select>
        <label for="name">Loại</label>
    </div>
        
    <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" path="outOffTime" id="outOffTime" placeholder="Ngày Hết Hạn" name="outOffTime" />
        <label for="name">Ngày Hết Hạn</label>
    </div>

    <div>
        <div class="form-floating">
            <form:select class="form-select" id="locationId" name="locationId" path="locationId">
                <c:forEach items="${locations}" var="l">
                    <option>${l.name}</option>
                </c:forEach>
            </form:select>
            <label for="location" class="form-label">Khu Vực</label>
        </div>
    </div>

    <div>
        <div class="form-floating mb-3 mt-3">
            <form:select class="form-select" id="companyId" name="companyId" path="companyId">

                <c:forEach items="${companies}" var="c">
                    <option>${c.name}</option>
                </c:forEach>
            </form:select>
            <label for="location" class="form-label">Doanh Nghiep</label>
        </div>
    </div>


    <div class="nut">
        <button type="button" class="btn btn-primary">Thêm</button>
        <button type="button" class="btn btn-danger">Hủy</button>
    </div>

</form:form>

