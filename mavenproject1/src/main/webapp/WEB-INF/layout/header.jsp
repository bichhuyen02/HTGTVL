<%-- 
    Document   : header
    Created on : Jul 26, 2023, 4:58:53 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="se" uri="http://www.springframework.org/security/tags" %>

<c:url value="/" var="action" />
<nav class="navbar navbar-expand-sm p-3 " >
    <div class="container-fluid ">
        <a class="navbar-brand text-white" href="${action}">JOB24H-WEBSITE</a>
        <!--        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>-->
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav me-auto">

                <li class="nav-item">
                    <a class="nav-link  " href="<c:url value="/jobs"/>"><strong>Công Việc</strong></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/companies"/>"><strong>Doanh Nghiệp</strong></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/location"/>"><strong>Khu Vực</strong> </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/user"/>"><strong>Người Dùng</strong> </a>
                </li>


                <div>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/categories"/>"><strong>Ngành Nghề</strong></a>
                    </li>
                </div>
                <li class="nav-item">
                    <a class="nav-link" href="${action}"><strong>Thống Kê</strong></a>
                </li>


                <c:choose>
                    <c:when test="${pageContext.request.userPrincipal.name != null}">
                        <li class="nav-item">
                            <a class="nav-link text-info" href="<c:url value="/" />">Chào ${pageContext.request.userPrincipal.name}!</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<c:url value="/logout" />"><strong>Đăng Xuất</strong></a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item">
                            <a class="nav-link" href="<c:url value="/login" />"><strong>Đăng Nhập</strong></a>
                        </li>
                    </c:otherwise>
                </c:choose>

            </ul>

            <form class="d-flex" action="${action}">
                <input class="form-control me-2" type="text" name="kw" placeholder="Nhập từ khóa...">
                <button class="btn btn-primary" type="submit">Tìm</button>
            </form>

        </div>
    </div>
</nav>