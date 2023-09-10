<%-- 
    Document   : applyCv
    Created on : Sep 5, 2023, 11:37:31 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="se" uri="http://www.springframework.org/security/tags" %>

<c:url value="/jobDetail/${jobDetails.id}/applyCv" var="action" />
<form:form cssClass="container" modelAttribute="addCv" action="${action}" method="post" enctype="multipart/form-data">
    <form:errors path="*" element="div" cssClass="alert alert-danger" /> 
    <div class="card nen frm ">
        <article class="card-body mx-auto" style="width: 50%;">
            
            <h2 class="card-title  text-center text-white">QUẢN LÝ NGÀNH NGHỀ</h2>
            <div class="form-floating mb-3 mt-3">
                <form:input type="file" class="form-control" path="file" id="file"
                            placeholder="CV" name="file" />
                    <label for="avatar">CV </label>
            </div>

            <div class="form-floating mb-3 mt-3">
                <form:textarea class="form-control" path="content" id="content" 
                                   placeholder="Thư giới thiệu" name="content" />
                <label for="content">Thư giới thiệu</label>
            </div>

            <div class="form-floating mb-3 mt-3">
                <button type="submit" class="btn btn-info">Nộp CV</button>
            </div>
            <p class="text-center"><a href="<c:url value="/jobDetail/${jobDetails.id}" />">Quay Lại</a> 
            </p>

        </article>
    </div>
</form:form>

