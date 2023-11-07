<%-- 
    Document   : search
    Created on : Oct 24, 2023, 9:44:49 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
<script src="<c:url value="/js/main.js" />"></script>
<link rel="stylesheet" href="<c:url value="/css/search.css" />"/>
<script src="<c:url value="/js/home.js" />"></script>

<div class="text-primary mt-4 mb-4 text-center"><h2> ỨNG VIÊN PHÙ HỢP</h2></div>
<c:url value="/search" var="action" />
<div class ="container">
    <form class="row " action="${action}">

        <div class="col">
            <select class="form-select mb-2" name="majors" id="majors">
                <c:forEach items="${categories}" var="c">
                    <option value="${c.name}">${c.name}</option>
                </c:forEach>
            </select>
        </div>

        <div class="col">
            <select class="form-select mb-2"" placeholder="Vị trí" name="location" id="location">
                <c:forEach items="${locations}" var="l">
                    <option value="${l.name}">${l.name}</option>
                </c:forEach>
            </select>
        </div>

        <div class="col">
            <select class="form-select mb-2"" placeholder="Trình độ học vấn" name="level" id="level">
                <option value="Trung cấp nghề">Trung cấp nghề</option>
                <option value="Cao đẳng">Cao đẳng</option>
                <option value="Đại học">Đại học</option>
            </select>
        </div>

        <div class="col">
            <select class="form-select mb-2" name="experience" id="experience">
                <option>Không có</option>
                <option>Dưới 1 năm</option>
                <option>Từ 2-5 năm</option>
                <option>Trên 5 năm</option>
            </select>
        </div>

        <div class="col">
            <select class="form-select mb-2" name="gender" id="gender">
                <option>Nữ</option>
                <option>Nam</option>
            </select>
        </div>

        <div class="col">
            <button class="btn btn-primary mb-2" type="submit">Tìm kiếm</button>
        </div>

    </form>
</div>
<section class="section ">
    <div class="container">

        <div class="row ">
            <c:forEach items="${us}" var="u">

                <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                    <a href="<c:url value="/profile/${u.id}" />">
                        <div class="card border-0 bg-light rounded shadow">
                            <div class="card-body p-4">
                                <span class="badge rounded-pill bg-primary float-md-end mb-3 mb-sm-0">${u.level}</span>
                                <h5>${u.name}</h5>
                                <div class="mt-3">
                                    <span class="text-muted d-block"> <i class="fa fa-calendar" aria-hidden="true"></i> ${u.birthDate}</span>

                                    <span class="text-muted d-block"> <i class="fa fa-map-marker" aria-hidden="true"></i> ${u.location}</span>

                                    <span class="text-muted d-block"> <i class="fa fa-address-book" aria-hidden="true"></i> ${u.majors}</span>

                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </c:forEach>
        </div>
    </div>
</section>

