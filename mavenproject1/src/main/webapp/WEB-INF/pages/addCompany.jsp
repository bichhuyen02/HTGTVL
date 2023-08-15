<%-- 
    Document   : addCompany
    Created on : Jul 29, 2023, 10:35:41 AM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="text-info mt-4 mb-4 text-center"><h2>QUẢN LÝ DOANH NGHIỆP </h2></div>

<c:url value="/addCompany" var="action" />

<form:form cssClass="container" modelAttribute="addCompanies" action="${action}" method="post" enctype="multipart/form-data">
    <form:hidden path="id" />
    <form:hidden path="image" />
    
    <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" path="name" id="name" placeholder="Tên DOANH NGHIỆP" name="name" />
        <label for="name">Tên DOANH NGHIỆP </label>
    </div>

    <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" path="linkCompany" id="linkCompany" placeholder="Link giới thiệu " name="linkCompany" />
        <label for="link">Link giới thiệu  </label>
    </div>

    <div class="form-floating mb-3 mt-3">
        <form:input type="file" class="form-control" path="file" id="file" placeholder="logo" name="file" />
        <label for="avatar">logo </label>
        <c:if test="${addCompanies.image != null}">
            <img src="${addCompanies.image}" width="120" />
        </c:if>
    </div>

    <div class="form-floating mb-3 mt-3">
        <button type="submit" class="btn btn-info">
            <c:choose>
                <c:when test="${addCompanies.id != null}">Cập nhật Doanh Nghiệp</c:when>
                <c:otherwise>Thêm Doanh Nghiệp</c:otherwise>
            </c:choose>
        </button>
    </div>
</form:form>
