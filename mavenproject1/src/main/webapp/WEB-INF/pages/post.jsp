<%-- 
    Document   : post
    Created on : Oct 23, 2023, 9:07:31 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="se" uri="http://www.springframework.org/security/tags" %>

<c:url value="/post/${u.id}" var="action" />
<link rel="stylesheet" href="<c:url value="/css/index1.css" />"/>

<div class="text-primary mt-4 mb-4 text-center"><h2>THÔNG TIN TÌM VIỆC</h2></div>
<form:form cssClass="container " modelAttribute="addPost" 
           action="${action}" method="post" enctype="multipart/form-data">
    <div class="container">
        <div class="row flex-lg-nowrap">
            <div class="col">
                <div class="row">
                    <div class="col mb-3">
                        <div class="card">
                            <div class="card-body">
                                <div class="e-profile">

                                    <ul class="nav nav-tabs">
                                        <li class="nav-item"><a href="" class="active nav-link">Thông tin</a></li>
                                    </ul>
                                    <div class="tab-content pt-3">
                                        <div class="tab-pane active">
                                            <form class="form" novalidate="">
                                                <div class="row">
                                                    <div class="col">
                                                        <div class="row">
                                                            <div class="col">
                                                                <div class="form-group">
                                                                    <label>Tên</label>
                                                                    <input class="form-control" type="text" name="ten" placeholder="${u.name}" value="${u.name}" disabled="true">
                                                                </div>
                                                            </div>
                                                            <div class="col">
                                                                <div class="form-group">
                                                                    <label>Ngày sinh</label>
                                                                    <input class="form-control" type="text" name="username" placeholder="${u.birthDate}" value="${u.birthDate}" disabled="true">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col">
                                                                <div class="form-group">
                                                                    <label>mail</label>
                                                                    <input class="form-control" type="text" placeholder="${u.mail}" value="${u.mail}" disabled="true">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col">
                                                                <div class="form-group">
                                                                    <label>Chuyên ngành</label>
                                                                    <input class="form-control" type="text" placeholder="${u.majors}" value="${u.majors}" disabled="true">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col">
                                                                <div class="form-group">
                                                                    <label>Trình độ văn hóa</label>
                                                                    <input class="form-control" type="text" placeholder="${u.level}" value="${u.level}" disabled="true">
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col mb-3">
                                                                <div class="form-group">
                                                                    <label>Ghi chú</label>
                                                                    <form:textarea id="content" name="content" path="content" class="form-control" 
                                                                                   rows="5" placeholder="Nhập..."></form:textarea>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col d-flex justify-content-end">
                                                            <button  class="btn btn-primary" type="submit">Đồng ý</button>
                                                        </div>
                                                    </div>

                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</form:form>
