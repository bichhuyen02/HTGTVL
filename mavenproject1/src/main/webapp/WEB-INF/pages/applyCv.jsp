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
    <%--<form:errors path="*" element="div" cssClass="alert alert-danger" />--%>
    <div class="card nen">
        <article class="card-body mx-auto" style="width: 50%;">

            <h2 class="card-title  text-center text-white">APPLY</h2>
            <div class="form-floating mb-3 mt-3">
                <input type="text" class="form-control" id="file" disabled="true"
                       placeholder="CV" name="file" value="${jobDetails.title}" />
                <label for="avatar">Công việc </label>
            </div>
            <div class="form-floating mb-3 mt-3">
                <input type="text" class="form-control" id="file" disabled="true"
                       placeholder="CV" name="file" value="${jobDetails.companyId.name}" />
                <label for="avatar">Công ty </label>
            </div>
            <div class="form-floating mb-3 mt-3">
                <input type="text" class="form-control" id="file" disabled="true"
                       placeholder="CV" name="file" value="${jobDetails.address}" />
                <label for="avatar">Địa chỉ </label>
            </div>

            <div class="form-floating mb-3 mt-3">
                <input type="text" class="form-control" id="file" disabled="true"
                       placeholder="CV" name="file" value="${jobDetails.experience}" />
                <label for="avatar">Kinh nghiệm </label>
            </div>

            <div class="form-floating mb-3 mt-3">
                <input type="text" class="form-control" id="file" disabled="true"
                       placeholder="CV" name="file" value="${jobDetails.jobNature}" />
                <label for="avatar">Loại </label>
            </div>
            <div class="form-floating mb-3 mt-3">
                <form:input type="file" required="true" class="form-control" path="file" id="file"
                            placeholder="Tải file pdf" name="file" accept=".pdf"/>
                <label for="avatar">CV </label>
            </div>
            <form:errors path="content" element="div" cssClass="text-danger" />

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

<script>
    const fileInput = document.querySelector('input[type="file"]');

    fileInput.addEventListener('change', function (event) {
        const file = event.target.files[0];
        const fileType = file.type;

        if (fileType !== 'application/pdf') {
            alert('Vui lòng chọn một tệp PDF.');
            fileInput.value = '';
        }
    });
</script>

