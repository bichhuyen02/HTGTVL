<%-- 
    Document   : addCompany
    Created on : Jul 29, 2023, 10:35:41 AM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="text-danger mt-4 mb-4 text-center"><h2>QUẢN LÝ DOANH NGHIỆP </h2></div>
<form:form cssClass="container " modelAttribute="addCompanies">
    <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" path="name" id="name" placeholder="Tên DOANH NGHIỆP" name="name" />
        <label for="name">Tên DOANH NGHIỆP </label>
    </div>

    <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" path="linkCompany" id="linkCompany" placeholder="Link giới thiệu " name="linkCompany" />
        <label for="name">Link giới thiệu  </label>
    </div>
        
        <div class="form-floating mb-3 mt-3">
        <form:input type="file" class="form-control" path="image" id="image" placeholder="logo " name="image" />
        <label for="name">Logo </label>
    </div>

    <div class="nut">
        <button type="button" class="btn btn-primary">Thêm</button>
        <button type="button" class="btn btn-danger">Hủy</button>
    </div>
</form:form>
