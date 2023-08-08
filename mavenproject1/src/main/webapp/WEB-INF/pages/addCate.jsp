<%-- 
    Document   : addCate
    Created on : Jul 29, 2023, 10:17:26 AM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="text-danger mt-4 mb-4 text-center"><h2>QUẢN LÝ NGÀNH NGHỀ </h2></div>

<c:url value="/addCate" var="action" />
<form:form cssClass="container " modelAttribute="addCates" action="${action}" method="post" enctype="multipart/form-data">
    <form:hidden path="id" />
    
    <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" path="name" id="name" placeholder="Tên Ngành Nghề" name="name" />
        <label for="name">Tên Ngành Nghề </label>
    </div>

        <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" path="description" id="description" placeholder="Mô Tả" name="description" />
        <label for="name">Mô Tả</label>
    </div>
        
   <div class="form-floating mb-3 mt-3">
        <button type="submit" class="btn btn-info">
            <c:choose>
                <c:when test="${addCates.id != null}">Cập nhật ngành nghề</c:when>
                <c:otherwise>Thêm ngành nghề</c:otherwise>
            </c:choose>
        </button>
    </div>

</form:form>