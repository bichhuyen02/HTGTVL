<%-- 
    Document   : addCompany
    Created on : Jul 29, 2023, 10:35:41 AM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:url value="/addCompany" var="action" />

<form:form cssClass="container" modelAttribute="addCompanies" action="${action}" method="post" enctype="multipart/form-data">
    <form:hidden path="id" />
    <form:hidden path="image" />

    <div class="card nen form-dn">
        <article class="card-body mx-auto" style="width: 50%;">
            <h2 class="card-title  text-center text-white">QUẢN LÝ DOANH NGHIỆP</h2>
            <form>
                <div class="form-floating mb-3 mt-3">
                    <form:input type="text" class="form-control" path="name" id="name" placeholder="Tên doanh nghiệp" name="name" />
                    <label for="name">Tên doanh nghiệp </label>

                </div>

                <div class="form-floating mb-3 mt-3">
                    <form:input type="text" class="form-control" path="linkCompany" id="linkCompany" placeholder="Link giới thiệu " name="linkCompany" />
                    <label for="name">Trang doanh nghiệp </label>

                </div>

                <div class="form-floating mb-3 mt-3">
                    <form:input type="file" class="form-control" path="file" id="file" placeholder="logo" name="file" />
                    <label for="avatar">logo </label>
                    <c:if test="${addCompanies.image != null}">
                        <img src="${addCompanies.image}" width="120" height="100" />
                    </c:if>
                </div>
            </form>


            <div class="form-floating mb-3 mt-3">
                <button type="submit" class="btn btn-primary">
                    <c:choose>
                        <c:when test="${addCompanies.id != null}">Cập nhật Doanh Nghiệp</c:when>
                        <c:otherwise>Thêm Doanh Nghiệp</c:otherwise>
                    </c:choose>
                </button>
            </div>
            <p class="text-center"><a href="<c:url value="/" />">Trang chủ</a> 
            </p>
        </form:form>
