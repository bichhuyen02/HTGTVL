<%-- 
    Document   : addCate
    Created on : Jul 29, 2023, 10:17:26 AM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="text-danger mt-4 mb-4 text-center"><h2>QUẢN LÝ NGÀNH NGHỀ </h2></div>
<form:form cssClass="container " modelAttribute="addCates" method="post" enctype="multipart/form-data">
    
    <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" path="name" id="name" placeholder="Tên Ngành Nghề" name="name" />
        <label for="name">Tên Ngành Nghề </label>
    </div>

    <div class="form-floating mb-3 mt-3">
        <input type="submit" value="Thêm sản phẩm" class="btn btn-info" />
    </div>
<!--    <div class="nut">
        <button type="button" class="btn btn-primary">Thêm</button>
        <button type="button" class="btn btn-danger">Hủy</button>
    </div>-->
</form:form>